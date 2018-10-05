module Lib
    ( someFunc
    ) where

import Bindings.Evdev
import Bindings.Evdev.EventCodes
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

data Device =
  Device { deviceFd :: Fd
         , deviceHandle :: Ptr C'libevdev
         }

type Time = (Integer, Integer)

data InputEvent =
  InputEvent { eventType :: Integer
             , eventCode :: Integer
             , eventValue :: Integer
             }
  deriving (Eq, Ord, Show)

data Uinput =
  Uinput { uinputHandle :: Ptr C'libevdev_uinput }

handleError :: String -> CInt -> IO ()
handleError loc e
  | e < 0 = ioError (errnoToIOError loc (Errno (-e)) Nothing Nothing)
  | otherwise = return ()

openDevice :: FilePath -> IO Device
openDevice path = do
  let flags = defaultFileFlags { nonBlock = True }
  fd <- openFd path ReadOnly Nothing flags
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

getDeviceName :: Device -> IO String
getDeviceName dev = do
  nm <- c'libevdev_get_name (deviceHandle dev)
  peekCString nm

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
  ty <- peek (p'input_event'type event)
  code <- peek (p'input_event'code event)
  value <- peek (p'input_event'value event)
  return ((fromIntegral time_sec, fromIntegral time_usec),
          (InputEvent
            (fromIntegral ty)
            (fromIntegral code)
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
  let ty = fromIntegral $ eventType event
  let code = fromIntegral $ eventCode event
  let value = fromIntegral $ eventValue event
  status <- c'libevdev_uinput_write_event (uinputHandle ui) ty code value
  handleError "writeEvent" status

someFunc :: IO ()
someFunc = do
  dev <- openDevice "/dev/input/event8"
  ui <- createUinput dev
  threadDelay 200000

  grabDevice dev
  forever $ do
    (_,ev) <- nextEvent dev
    print ev
    writeEvent ui ev
