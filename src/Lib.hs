module Lib
    ( someFunc
    ) where

import Bindings.Evdev
import Bindings.Evdev.Events
import Bindings.Evdev.Uinput
import System.Posix.IO
import System.Posix.Types
import Foreign.Ptr
import Foreign.Marshal.Alloc
import Foreign.C.Error
import System.IO.Error
import Foreign.C.Types
import Foreign.C.String
import Foreign.Storable
import Control.Concurrent
import Control.Exception
import GHC.Conc.IO (closeFdWith)
import Control.Monad
import Data.List
import Data.Maybe

data Device =
  Device { deviceFd :: Fd
         , deviceHandle :: Ptr C'libevdev
         }

type Time = (Integer, Integer)

data InputEvent =
  InputEvent { eventType :: EventType
             , eventCode :: EventCode
             , eventValue :: Integer
             }
  deriving (Eq, Ord, Show)

data Uinput =
  Uinput { uinputHandle :: Ptr C'libevdev_uinput }

data DeviceInfo =
  DeviceInfo { infoName :: String
             , infoPhys :: String
             , infoUniq :: String
             , infoIdProduct :: Integer
             , infoIdVendor :: Integer
             , infoIdBusType :: Integer
             , infoIdVersion :: Integer
             , infoDriverVersion :: Integer
             }
  deriving (Eq, Ord, Show)

handleError :: String -> CInt -> IO ()
handleError loc e
  | e < 0 = ioError (errnoToIOError loc (Errno (-e)) Nothing Nothing)
  | otherwise = return ()

-- TODO: maybe replace by function taking file descriptor, so we no
-- longer have dependency on unix?
openDevice :: FilePath -> IO Device
openDevice path = do
  let flags = defaultFileFlags { nonBlock = True }
  fd <- openFd path ReadWrite Nothing flags
  e <- alloca $ \v -> do
    err <- c'libevdev_new_from_fd (fromIntegral fd) v
    handleError "openDevice" err
    peek v
  return (Device fd e)

closeDevice :: Device -> IO ()
closeDevice dev = do
  c'libevdev_free (deviceHandle dev)
  closeFdWith closeFd (deviceFd dev)

withDevice :: FilePath -> (Device -> IO a) -> IO a
withDevice path cb = bracket (openDevice path) closeDevice cb

safePeekString :: CString -> IO String
safePeekString p
  | p == nullPtr = return ""
  | otherwise = peekCString p

getDeviceInfo :: Device -> IO DeviceInfo
getDeviceInfo dev = do
  let h = deviceHandle dev
  name <- safePeekString =<< c'libevdev_get_name h
  phys <- safePeekString =<< c'libevdev_get_phys h
  uniq <- safePeekString =<< c'libevdev_get_uniq h
  idProduct <- fi $ c'libevdev_get_id_product h
  idVendor <- fi $ c'libevdev_get_id_vendor h
  idBusType <- fi $ c'libevdev_get_id_bustype h
  idVersion <- fi $ c'libevdev_get_id_version h
  driverVersion <- fi $ c'libevdev_get_driver_version h
  return (DeviceInfo { infoName = name
                     , infoPhys = phys
                     , infoUniq = uniq
                     , infoIdProduct = idProduct
                     , infoIdVendor = idVendor
                     , infoIdBusType = idBusType
                     , infoIdVersion = idVendor
                     , infoDriverVersion = driverVersion
                     })

  where fi = fmap fromIntegral

hasEventType :: Device -> EventType -> IO Bool
hasEventType dev (EventType ty) = do
  supported <- c'libevdev_has_event_type (deviceHandle dev) (fromIntegral ty)
  return (supported == 1)

hasEventCode :: Device -> EventType -> EventCode -> IO Bool
hasEventCode dev (EventType ty) (EventCode code) = do
  supported <- c'libevdev_has_event_code (deviceHandle dev) (fromIntegral ty) (fromIntegral code)
  return (supported == 1)

hasProperty :: Device -> DeviceProperty -> IO Bool
hasProperty dev (DeviceProperty prop) = do
  let h = deviceHandle dev
  supported <- c'libevdev_has_property h (fromIntegral prop)
  return (supported == 1)

fetchEventValue :: Device -> EventType -> EventCode -> IO (Maybe Int)
fetchEventValue dev t@(EventType ty) c@(EventCode code) = do
  let h = deviceHandle dev
  supported <- isSupported
  if not supported
    then return Nothing
    else do
      value <- c'libevdev_get_event_value h (fromIntegral ty) (fromIntegral code)
      return (Just (fromIntegral value))

  where isSupported = do
          hasType <- hasEventType dev t
          hasCode <- hasEventCode dev t c
          return (hasType && hasCode)

setLedValue :: Device -> EventCode -> Bool -> IO ()
setLedValue dev (EventCode code) active = do
  let s = status active
  err <- c'libevdev_kernel_set_led_value (deviceHandle dev) (fromIntegral code) s
  handleError "setLedValue" err

  where status False = c'LIBEVDEV_LED_OFF
        status True = c'LIBEVDEV_LED_ON

grabDevice :: Device -> IO ()
grabDevice dev = do
  status <- c'libevdev_grab (deviceHandle dev) c'LIBEVDEV_GRAB
  handleError "grabDevice" status

ungrabDevice :: Device -> IO ()
ungrabDevice dev = do
  status <- c'libevdev_grab (deviceHandle dev) c'LIBEVDEV_UNGRAB
  handleError "ungrabDevice" status

nextEvent :: Device -> IO (Time, InputEvent)
nextEvent dev = alloca $ \event -> do
  tryRead event
  time_sec <- peek (p'timeval'tv_sec (p'input_event'time event))
  time_usec <- peek (p'timeval'tv_usec (p'input_event'time event))
  ty <- fmap (EventType . fromIntegral) $ peek (p'input_event'type event)
  code <- fmap (EventCode . fromIntegral) $ peek (p'input_event'code event)
  value <- peek (p'input_event'value event)
  return ((fromIntegral time_sec, fromIntegral time_usec),
          (InputEvent
            ty
            code
            (fromIntegral value)))

  where tryRead event = do
          status <- c'libevdev_next_event (deviceHandle dev) c'LIBEVDEV_READ_FLAG_NORMAL event
          case status of
            _ | status == -c'EAGAIN -> do
                threadWaitRead (deviceFd dev)
                tryRead event
              -- simply keep reading after SYN_DROPPED
              | status == c'LIBEVDEV_READ_STATUS_SYNC ->
                tryRead event
              | status == c'LIBEVDEV_READ_STATUS_SUCCESS ->
                return ()
              | otherwise ->
                handleError "nextEvent" status

createUinput :: Device -> IO Uinput
createUinput dev = alloca $ \ui -> do
  status <- c'libevdev_uinput_create_from_device (deviceHandle dev) c'LIBEVDEV_UINPUT_OPEN_MANAGED ui
  handleError "createUinput" status
  h <- peek ui
  return (Uinput h)

destroyUinput :: Uinput -> IO ()
destroyUinput ui = c'libevdev_uinput_destroy (uinputHandle ui)

writeEvent :: Uinput -> InputEvent -> IO ()
writeEvent ui event = do
  let EventType ty = eventType event
  let EventCode code = eventCode event
  let value = fromIntegral $ eventValue event
  status <- (c'libevdev_uinput_write_event
             (uinputHandle ui)
             (fromIntegral ty)
             (fromIntegral code)
             value)
  handleError "writeEvent" status

-- findKinesis :: IO (Maybe Device)
-- findKinesis = do
--   let dir = "/dev/input"
--   subdirs <- listDirectory dir
--   let paths = map (dir </>) (filter ("event" `isPrefixOf`) subdirs)
--   devices <- fmap catMaybes . forM paths $
--     \p -> withDevice p $
--     \dev -> do
--       info <- getDeviceInfo dev
--       hasKeyA <- hasEventCode dev evKey keyA
--       let name = infoName info
--       if "Kinesis" `isInfixOf` name && hasKeyA
--         then return (Just p)
--         else return Nothing
--   case devices of
--     (d:_) -> fmap Just (openDevice d)
--     [] -> return Nothing

data Direction = Press | Repeat | Release

data KeyEvent =
  KeyEvent { keyCode :: EventCode
           , keyDirection :: Direction
           }

someFunc :: IO ()
someFunc = do
  -- Just dev <- findKinesis
  dev <- openDevice "/dev/input/event8"
  print =<< getDeviceInfo dev
  ui <- createUinput dev
  threadDelay 200000

  grabDevice dev
  setLedValue dev ledCapsl True
  forever $ do
    (_,ev) <- nextEvent dev
    if eventCode ev == keyA
      then putStrLn "found A!"
      else return ()
    writeEvent ui ev
