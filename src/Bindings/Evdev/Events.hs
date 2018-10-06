module Bindings.Evdev.Events where

import Bindings.Evdev.EventCodes

newtype DeviceProperty = DeviceProperty Integer
  deriving (Eq, Ord, Show)

inputPropPointer :: DeviceProperty
inputPropPointer = DeviceProperty c'INPUT_PROP_POINTER
inputPropDirect :: DeviceProperty
inputPropDirect = DeviceProperty c'INPUT_PROP_DIRECT
inputPropButtonpad :: DeviceProperty
inputPropButtonpad = DeviceProperty c'INPUT_PROP_BUTTONPAD
inputPropSemiMt :: DeviceProperty
inputPropSemiMt = DeviceProperty c'INPUT_PROP_SEMI_MT
inputPropTopbuttonpad :: DeviceProperty
inputPropTopbuttonpad = DeviceProperty c'INPUT_PROP_TOPBUTTONPAD
inputPropPointingStick :: DeviceProperty
inputPropPointingStick = DeviceProperty c'INPUT_PROP_POINTING_STICK
inputPropAccelerometer :: DeviceProperty
inputPropAccelerometer = DeviceProperty c'INPUT_PROP_ACCELEROMETER

newtype EventType = EventType Integer
  deriving (Eq, Ord, Show)

evSyn :: EventType
evSyn = EventType c'EV_SYN
evKey :: EventType
evKey = EventType c'EV_KEY
evRel :: EventType
evRel = EventType c'EV_REL
evAbs :: EventType
evAbs = EventType c'EV_ABS
evMsc :: EventType
evMsc = EventType c'EV_MSC
evSw :: EventType
evSw = EventType c'EV_SW
evLed :: EventType
evLed = EventType c'EV_LED
evSnd :: EventType
evSnd = EventType c'EV_SND
evRep :: EventType
evRep = EventType c'EV_REP
evFf :: EventType
evFf = EventType c'EV_FF
evPwr :: EventType
evPwr = EventType c'EV_PWR
evFfStatus :: EventType
evFfStatus = EventType c'EV_FF_STATUS

newtype EventCode = EventCode Integer
  deriving (Eq, Ord, Show)

synReport :: EventCode
synReport = EventCode c'SYN_REPORT
synConfig :: EventCode
synConfig = EventCode c'SYN_CONFIG
synMtReport :: EventCode
synMtReport = EventCode c'SYN_MT_REPORT
synDropped :: EventCode
synDropped = EventCode c'SYN_DROPPED

keyReserved :: EventCode
keyReserved = EventCode c'KEY_RESERVED
keyEsc :: EventCode
keyEsc = EventCode c'KEY_ESC
key1 :: EventCode
key1 = EventCode c'KEY_1
key2 :: EventCode
key2 = EventCode c'KEY_2
key3 :: EventCode
key3 = EventCode c'KEY_3
key4 :: EventCode
key4 = EventCode c'KEY_4
key5 :: EventCode
key5 = EventCode c'KEY_5
key6 :: EventCode
key6 = EventCode c'KEY_6
key7 :: EventCode
key7 = EventCode c'KEY_7
key8 :: EventCode
key8 = EventCode c'KEY_8
key9 :: EventCode
key9 = EventCode c'KEY_9
key0 :: EventCode
key0 = EventCode c'KEY_0
keyMinus :: EventCode
keyMinus = EventCode c'KEY_MINUS
keyEqual :: EventCode
keyEqual = EventCode c'KEY_EQUAL
keyBackspace :: EventCode
keyBackspace = EventCode c'KEY_BACKSPACE
keyTab :: EventCode
keyTab = EventCode c'KEY_TAB
keyQ :: EventCode
keyQ = EventCode c'KEY_Q
keyW :: EventCode
keyW = EventCode c'KEY_W
keyE :: EventCode
keyE = EventCode c'KEY_E
keyR :: EventCode
keyR = EventCode c'KEY_R
keyT :: EventCode
keyT = EventCode c'KEY_T
keyY :: EventCode
keyY = EventCode c'KEY_Y
keyU :: EventCode
keyU = EventCode c'KEY_U
keyI :: EventCode
keyI = EventCode c'KEY_I
keyO :: EventCode
keyO = EventCode c'KEY_O
keyP :: EventCode
keyP = EventCode c'KEY_P
keyLeftbrace :: EventCode
keyLeftbrace = EventCode c'KEY_LEFTBRACE
keyRightbrace :: EventCode
keyRightbrace = EventCode c'KEY_RIGHTBRACE
keyEnter :: EventCode
keyEnter = EventCode c'KEY_ENTER
keyLeftctrl :: EventCode
keyLeftctrl = EventCode c'KEY_LEFTCTRL
keyA :: EventCode
keyA = EventCode c'KEY_A
keyS :: EventCode
keyS = EventCode c'KEY_S
keyD :: EventCode
keyD = EventCode c'KEY_D
keyF :: EventCode
keyF = EventCode c'KEY_F
keyG :: EventCode
keyG = EventCode c'KEY_G
keyH :: EventCode
keyH = EventCode c'KEY_H
keyJ :: EventCode
keyJ = EventCode c'KEY_J
keyK :: EventCode
keyK = EventCode c'KEY_K
keyL :: EventCode
keyL = EventCode c'KEY_L
keySemicolon :: EventCode
keySemicolon = EventCode c'KEY_SEMICOLON
keyApostrophe :: EventCode
keyApostrophe = EventCode c'KEY_APOSTROPHE
keyGrave :: EventCode
keyGrave = EventCode c'KEY_GRAVE
keyLeftshift :: EventCode
keyLeftshift = EventCode c'KEY_LEFTSHIFT
keyBackslash :: EventCode
keyBackslash = EventCode c'KEY_BACKSLASH
keyZ :: EventCode
keyZ = EventCode c'KEY_Z
keyX :: EventCode
keyX = EventCode c'KEY_X
keyC :: EventCode
keyC = EventCode c'KEY_C
keyV :: EventCode
keyV = EventCode c'KEY_V
keyB :: EventCode
keyB = EventCode c'KEY_B
keyN :: EventCode
keyN = EventCode c'KEY_N
keyM :: EventCode
keyM = EventCode c'KEY_M
keyComma :: EventCode
keyComma = EventCode c'KEY_COMMA
keyDot :: EventCode
keyDot = EventCode c'KEY_DOT
keySlash :: EventCode
keySlash = EventCode c'KEY_SLASH
keyRightshift :: EventCode
keyRightshift = EventCode c'KEY_RIGHTSHIFT
keyKpasterisk :: EventCode
keyKpasterisk = EventCode c'KEY_KPASTERISK
keyLeftalt :: EventCode
keyLeftalt = EventCode c'KEY_LEFTALT
keySpace :: EventCode
keySpace = EventCode c'KEY_SPACE
keyCapslock :: EventCode
keyCapslock = EventCode c'KEY_CAPSLOCK
keyF1 :: EventCode
keyF1 = EventCode c'KEY_F1
keyF2 :: EventCode
keyF2 = EventCode c'KEY_F2
keyF3 :: EventCode
keyF3 = EventCode c'KEY_F3
keyF4 :: EventCode
keyF4 = EventCode c'KEY_F4
keyF5 :: EventCode
keyF5 = EventCode c'KEY_F5
keyF6 :: EventCode
keyF6 = EventCode c'KEY_F6
keyF7 :: EventCode
keyF7 = EventCode c'KEY_F7
keyF8 :: EventCode
keyF8 = EventCode c'KEY_F8
keyF9 :: EventCode
keyF9 = EventCode c'KEY_F9
keyF10 :: EventCode
keyF10 = EventCode c'KEY_F10
keyNumlock :: EventCode
keyNumlock = EventCode c'KEY_NUMLOCK
keyScrolllock :: EventCode
keyScrolllock = EventCode c'KEY_SCROLLLOCK
keyKp7 :: EventCode
keyKp7 = EventCode c'KEY_KP7
keyKp8 :: EventCode
keyKp8 = EventCode c'KEY_KP8
keyKp9 :: EventCode
keyKp9 = EventCode c'KEY_KP9
keyKpminus :: EventCode
keyKpminus = EventCode c'KEY_KPMINUS
keyKp4 :: EventCode
keyKp4 = EventCode c'KEY_KP4
keyKp5 :: EventCode
keyKp5 = EventCode c'KEY_KP5
keyKp6 :: EventCode
keyKp6 = EventCode c'KEY_KP6
keyKpplus :: EventCode
keyKpplus = EventCode c'KEY_KPPLUS
keyKp1 :: EventCode
keyKp1 = EventCode c'KEY_KP1
keyKp2 :: EventCode
keyKp2 = EventCode c'KEY_KP2
keyKp3 :: EventCode
keyKp3 = EventCode c'KEY_KP3
keyKp0 :: EventCode
keyKp0 = EventCode c'KEY_KP0
keyKpdot :: EventCode
keyKpdot = EventCode c'KEY_KPDOT
keyZenkakuhankaku :: EventCode
keyZenkakuhankaku = EventCode c'KEY_ZENKAKUHANKAKU
key102Nd :: EventCode
key102Nd = EventCode c'KEY_102ND
keyF11 :: EventCode
keyF11 = EventCode c'KEY_F11
keyF12 :: EventCode
keyF12 = EventCode c'KEY_F12
keyRo :: EventCode
keyRo = EventCode c'KEY_RO
keyKatakana :: EventCode
keyKatakana = EventCode c'KEY_KATAKANA
keyHiragana :: EventCode
keyHiragana = EventCode c'KEY_HIRAGANA
keyHenkan :: EventCode
keyHenkan = EventCode c'KEY_HENKAN
keyKatakanahiragana :: EventCode
keyKatakanahiragana = EventCode c'KEY_KATAKANAHIRAGANA
keyMuhenkan :: EventCode
keyMuhenkan = EventCode c'KEY_MUHENKAN
keyKpjpcomma :: EventCode
keyKpjpcomma = EventCode c'KEY_KPJPCOMMA
keyKpenter :: EventCode
keyKpenter = EventCode c'KEY_KPENTER
keyRightctrl :: EventCode
keyRightctrl = EventCode c'KEY_RIGHTCTRL
keyKpslash :: EventCode
keyKpslash = EventCode c'KEY_KPSLASH
keySysrq :: EventCode
keySysrq = EventCode c'KEY_SYSRQ
keyRightalt :: EventCode
keyRightalt = EventCode c'KEY_RIGHTALT
keyLinefeed :: EventCode
keyLinefeed = EventCode c'KEY_LINEFEED
keyHome :: EventCode
keyHome = EventCode c'KEY_HOME
keyUp :: EventCode
keyUp = EventCode c'KEY_UP
keyPageup :: EventCode
keyPageup = EventCode c'KEY_PAGEUP
keyLeft :: EventCode
keyLeft = EventCode c'KEY_LEFT
keyRight :: EventCode
keyRight = EventCode c'KEY_RIGHT
keyEnd :: EventCode
keyEnd = EventCode c'KEY_END
keyDown :: EventCode
keyDown = EventCode c'KEY_DOWN
keyPagedown :: EventCode
keyPagedown = EventCode c'KEY_PAGEDOWN
keyInsert :: EventCode
keyInsert = EventCode c'KEY_INSERT
keyDelete :: EventCode
keyDelete = EventCode c'KEY_DELETE
keyMacro :: EventCode
keyMacro = EventCode c'KEY_MACRO
keyMute :: EventCode
keyMute = EventCode c'KEY_MUTE
keyVolumedown :: EventCode
keyVolumedown = EventCode c'KEY_VOLUMEDOWN
keyVolumeup :: EventCode
keyVolumeup = EventCode c'KEY_VOLUMEUP
keyPower :: EventCode
keyPower = EventCode c'KEY_POWER
keyKpequal :: EventCode
keyKpequal = EventCode c'KEY_KPEQUAL
keyKpplusminus :: EventCode
keyKpplusminus = EventCode c'KEY_KPPLUSMINUS
keyPause :: EventCode
keyPause = EventCode c'KEY_PAUSE
keyScale :: EventCode
keyScale = EventCode c'KEY_SCALE
keyKpcomma :: EventCode
keyKpcomma = EventCode c'KEY_KPCOMMA
keyHangeul :: EventCode
keyHangeul = EventCode c'KEY_HANGEUL
keyHanguel :: EventCode
keyHanguel = EventCode c'KEY_HANGUEL
keyHanja :: EventCode
keyHanja = EventCode c'KEY_HANJA
keyYen :: EventCode
keyYen = EventCode c'KEY_YEN
keyLeftmeta :: EventCode
keyLeftmeta = EventCode c'KEY_LEFTMETA
keyRightmeta :: EventCode
keyRightmeta = EventCode c'KEY_RIGHTMETA
keyCompose :: EventCode
keyCompose = EventCode c'KEY_COMPOSE
keyStop :: EventCode
keyStop = EventCode c'KEY_STOP
keyAgain :: EventCode
keyAgain = EventCode c'KEY_AGAIN
keyProps :: EventCode
keyProps = EventCode c'KEY_PROPS
keyUndo :: EventCode
keyUndo = EventCode c'KEY_UNDO
keyFront :: EventCode
keyFront = EventCode c'KEY_FRONT
keyCopy :: EventCode
keyCopy = EventCode c'KEY_COPY
keyOpen :: EventCode
keyOpen = EventCode c'KEY_OPEN
keyPaste :: EventCode
keyPaste = EventCode c'KEY_PASTE
keyFind :: EventCode
keyFind = EventCode c'KEY_FIND
keyCut :: EventCode
keyCut = EventCode c'KEY_CUT
keyHelp :: EventCode
keyHelp = EventCode c'KEY_HELP
keyMenu :: EventCode
keyMenu = EventCode c'KEY_MENU
keyCalc :: EventCode
keyCalc = EventCode c'KEY_CALC
keySetup :: EventCode
keySetup = EventCode c'KEY_SETUP
keySleep :: EventCode
keySleep = EventCode c'KEY_SLEEP
keyWakeup :: EventCode
keyWakeup = EventCode c'KEY_WAKEUP
keyFile :: EventCode
keyFile = EventCode c'KEY_FILE
keySendfile :: EventCode
keySendfile = EventCode c'KEY_SENDFILE
keyDeletefile :: EventCode
keyDeletefile = EventCode c'KEY_DELETEFILE
keyXfer :: EventCode
keyXfer = EventCode c'KEY_XFER
keyProg1 :: EventCode
keyProg1 = EventCode c'KEY_PROG1
keyProg2 :: EventCode
keyProg2 = EventCode c'KEY_PROG2
keyWww :: EventCode
keyWww = EventCode c'KEY_WWW
keyMsdos :: EventCode
keyMsdos = EventCode c'KEY_MSDOS
keyCoffee :: EventCode
keyCoffee = EventCode c'KEY_COFFEE
keyScreenlock :: EventCode
keyScreenlock = EventCode c'KEY_SCREENLOCK
keyRotateDisplay :: EventCode
keyRotateDisplay = EventCode c'KEY_ROTATE_DISPLAY
keyDirection :: EventCode
keyDirection = EventCode c'KEY_DIRECTION
keyCyclewindows :: EventCode
keyCyclewindows = EventCode c'KEY_CYCLEWINDOWS
keyMail :: EventCode
keyMail = EventCode c'KEY_MAIL
keyBookmarks :: EventCode
keyBookmarks = EventCode c'KEY_BOOKMARKS
keyComputer :: EventCode
keyComputer = EventCode c'KEY_COMPUTER
keyBack :: EventCode
keyBack = EventCode c'KEY_BACK
keyForward :: EventCode
keyForward = EventCode c'KEY_FORWARD
keyClosecd :: EventCode
keyClosecd = EventCode c'KEY_CLOSECD
keyEjectcd :: EventCode
keyEjectcd = EventCode c'KEY_EJECTCD
keyEjectclosecd :: EventCode
keyEjectclosecd = EventCode c'KEY_EJECTCLOSECD
keyNextsong :: EventCode
keyNextsong = EventCode c'KEY_NEXTSONG
keyPlaypause :: EventCode
keyPlaypause = EventCode c'KEY_PLAYPAUSE
keyPrevioussong :: EventCode
keyPrevioussong = EventCode c'KEY_PREVIOUSSONG
keyStopcd :: EventCode
keyStopcd = EventCode c'KEY_STOPCD
keyRecord :: EventCode
keyRecord = EventCode c'KEY_RECORD
keyRewind :: EventCode
keyRewind = EventCode c'KEY_REWIND
keyPhone :: EventCode
keyPhone = EventCode c'KEY_PHONE
keyIso :: EventCode
keyIso = EventCode c'KEY_ISO
keyConfig :: EventCode
keyConfig = EventCode c'KEY_CONFIG
keyHomepage :: EventCode
keyHomepage = EventCode c'KEY_HOMEPAGE
keyRefresh :: EventCode
keyRefresh = EventCode c'KEY_REFRESH
keyExit :: EventCode
keyExit = EventCode c'KEY_EXIT
keyMove :: EventCode
keyMove = EventCode c'KEY_MOVE
keyEdit :: EventCode
keyEdit = EventCode c'KEY_EDIT
keyScrollup :: EventCode
keyScrollup = EventCode c'KEY_SCROLLUP
keyScrolldown :: EventCode
keyScrolldown = EventCode c'KEY_SCROLLDOWN
keyKpleftparen :: EventCode
keyKpleftparen = EventCode c'KEY_KPLEFTPAREN
keyKprightparen :: EventCode
keyKprightparen = EventCode c'KEY_KPRIGHTPAREN
keyNew :: EventCode
keyNew = EventCode c'KEY_NEW
keyRedo :: EventCode
keyRedo = EventCode c'KEY_REDO
keyF13 :: EventCode
keyF13 = EventCode c'KEY_F13
keyF14 :: EventCode
keyF14 = EventCode c'KEY_F14
keyF15 :: EventCode
keyF15 = EventCode c'KEY_F15
keyF16 :: EventCode
keyF16 = EventCode c'KEY_F16
keyF17 :: EventCode
keyF17 = EventCode c'KEY_F17
keyF18 :: EventCode
keyF18 = EventCode c'KEY_F18
keyF19 :: EventCode
keyF19 = EventCode c'KEY_F19
keyF20 :: EventCode
keyF20 = EventCode c'KEY_F20
keyF21 :: EventCode
keyF21 = EventCode c'KEY_F21
keyF22 :: EventCode
keyF22 = EventCode c'KEY_F22
keyF23 :: EventCode
keyF23 = EventCode c'KEY_F23
keyF24 :: EventCode
keyF24 = EventCode c'KEY_F24
keyPlaycd :: EventCode
keyPlaycd = EventCode c'KEY_PLAYCD
keyPausecd :: EventCode
keyPausecd = EventCode c'KEY_PAUSECD
keyProg3 :: EventCode
keyProg3 = EventCode c'KEY_PROG3
keyProg4 :: EventCode
keyProg4 = EventCode c'KEY_PROG4
keyDashboard :: EventCode
keyDashboard = EventCode c'KEY_DASHBOARD
keySuspend :: EventCode
keySuspend = EventCode c'KEY_SUSPEND
keyClose :: EventCode
keyClose = EventCode c'KEY_CLOSE
keyPlay :: EventCode
keyPlay = EventCode c'KEY_PLAY
keyFastforward :: EventCode
keyFastforward = EventCode c'KEY_FASTFORWARD
keyBassboost :: EventCode
keyBassboost = EventCode c'KEY_BASSBOOST
keyPrint :: EventCode
keyPrint = EventCode c'KEY_PRINT
keyHp :: EventCode
keyHp = EventCode c'KEY_HP
keyCamera :: EventCode
keyCamera = EventCode c'KEY_CAMERA
keySound :: EventCode
keySound = EventCode c'KEY_SOUND
keyQuestion :: EventCode
keyQuestion = EventCode c'KEY_QUESTION
keyEmail :: EventCode
keyEmail = EventCode c'KEY_EMAIL
keyChat :: EventCode
keyChat = EventCode c'KEY_CHAT
keySearch :: EventCode
keySearch = EventCode c'KEY_SEARCH
keyConnect :: EventCode
keyConnect = EventCode c'KEY_CONNECT
keyFinance :: EventCode
keyFinance = EventCode c'KEY_FINANCE
keySport :: EventCode
keySport = EventCode c'KEY_SPORT
keyShop :: EventCode
keyShop = EventCode c'KEY_SHOP
keyAlterase :: EventCode
keyAlterase = EventCode c'KEY_ALTERASE
keyCancel :: EventCode
keyCancel = EventCode c'KEY_CANCEL
keyBrightnessdown :: EventCode
keyBrightnessdown = EventCode c'KEY_BRIGHTNESSDOWN
keyBrightnessup :: EventCode
keyBrightnessup = EventCode c'KEY_BRIGHTNESSUP
keyMedia :: EventCode
keyMedia = EventCode c'KEY_MEDIA
keySwitchvideomode :: EventCode
keySwitchvideomode = EventCode c'KEY_SWITCHVIDEOMODE
keyKbdillumtoggle :: EventCode
keyKbdillumtoggle = EventCode c'KEY_KBDILLUMTOGGLE
keyKbdillumdown :: EventCode
keyKbdillumdown = EventCode c'KEY_KBDILLUMDOWN
keyKbdillumup :: EventCode
keyKbdillumup = EventCode c'KEY_KBDILLUMUP
keySend :: EventCode
keySend = EventCode c'KEY_SEND
keyReply :: EventCode
keyReply = EventCode c'KEY_REPLY
keyForwardmail :: EventCode
keyForwardmail = EventCode c'KEY_FORWARDMAIL
keySave :: EventCode
keySave = EventCode c'KEY_SAVE
keyDocuments :: EventCode
keyDocuments = EventCode c'KEY_DOCUMENTS
keyBattery :: EventCode
keyBattery = EventCode c'KEY_BATTERY
keyBluetooth :: EventCode
keyBluetooth = EventCode c'KEY_BLUETOOTH
keyWlan :: EventCode
keyWlan = EventCode c'KEY_WLAN
keyUwb :: EventCode
keyUwb = EventCode c'KEY_UWB
keyUnknown :: EventCode
keyUnknown = EventCode c'KEY_UNKNOWN
keyVideoNext :: EventCode
keyVideoNext = EventCode c'KEY_VIDEO_NEXT
keyVideoPrev :: EventCode
keyVideoPrev = EventCode c'KEY_VIDEO_PREV
keyBrightnessCycle :: EventCode
keyBrightnessCycle = EventCode c'KEY_BRIGHTNESS_CYCLE
keyBrightnessAuto :: EventCode
keyBrightnessAuto = EventCode c'KEY_BRIGHTNESS_AUTO
keyBrightnessZero :: EventCode
keyBrightnessZero = EventCode c'KEY_BRIGHTNESS_ZERO
keyDisplayOff :: EventCode
keyDisplayOff = EventCode c'KEY_DISPLAY_OFF
keyWwan :: EventCode
keyWwan = EventCode c'KEY_WWAN
keyWimax :: EventCode
keyWimax = EventCode c'KEY_WIMAX
keyRfkill :: EventCode
keyRfkill = EventCode c'KEY_RFKILL
keyMicmute :: EventCode
keyMicmute = EventCode c'KEY_MICMUTE
btnMisc :: EventCode
btnMisc = EventCode c'BTN_MISC
btn0 :: EventCode
btn0 = EventCode c'BTN_0
btn1 :: EventCode
btn1 = EventCode c'BTN_1
btn2 :: EventCode
btn2 = EventCode c'BTN_2
btn3 :: EventCode
btn3 = EventCode c'BTN_3
btn4 :: EventCode
btn4 = EventCode c'BTN_4
btn5 :: EventCode
btn5 = EventCode c'BTN_5
btn6 :: EventCode
btn6 = EventCode c'BTN_6
btn7 :: EventCode
btn7 = EventCode c'BTN_7
btn8 :: EventCode
btn8 = EventCode c'BTN_8
btn9 :: EventCode
btn9 = EventCode c'BTN_9
btnMouse :: EventCode
btnMouse = EventCode c'BTN_MOUSE
btnLeft :: EventCode
btnLeft = EventCode c'BTN_LEFT
btnRight :: EventCode
btnRight = EventCode c'BTN_RIGHT
btnMiddle :: EventCode
btnMiddle = EventCode c'BTN_MIDDLE
btnSide :: EventCode
btnSide = EventCode c'BTN_SIDE
btnExtra :: EventCode
btnExtra = EventCode c'BTN_EXTRA
btnForward :: EventCode
btnForward = EventCode c'BTN_FORWARD
btnBack :: EventCode
btnBack = EventCode c'BTN_BACK
btnTask :: EventCode
btnTask = EventCode c'BTN_TASK
btnJoystick :: EventCode
btnJoystick = EventCode c'BTN_JOYSTICK
btnTrigger :: EventCode
btnTrigger = EventCode c'BTN_TRIGGER
btnThumb :: EventCode
btnThumb = EventCode c'BTN_THUMB
btnThumb2 :: EventCode
btnThumb2 = EventCode c'BTN_THUMB2
btnTop :: EventCode
btnTop = EventCode c'BTN_TOP
btnTop2 :: EventCode
btnTop2 = EventCode c'BTN_TOP2
btnPinkie :: EventCode
btnPinkie = EventCode c'BTN_PINKIE
btnBase :: EventCode
btnBase = EventCode c'BTN_BASE
btnBase2 :: EventCode
btnBase2 = EventCode c'BTN_BASE2
btnBase3 :: EventCode
btnBase3 = EventCode c'BTN_BASE3
btnBase4 :: EventCode
btnBase4 = EventCode c'BTN_BASE4
btnBase5 :: EventCode
btnBase5 = EventCode c'BTN_BASE5
btnBase6 :: EventCode
btnBase6 = EventCode c'BTN_BASE6
btnDead :: EventCode
btnDead = EventCode c'BTN_DEAD
btnGamepad :: EventCode
btnGamepad = EventCode c'BTN_GAMEPAD
btnSouth :: EventCode
btnSouth = EventCode c'BTN_SOUTH
btnA :: EventCode
btnA = EventCode c'BTN_A
btnEast :: EventCode
btnEast = EventCode c'BTN_EAST
btnB :: EventCode
btnB = EventCode c'BTN_B
btnC :: EventCode
btnC = EventCode c'BTN_C
btnNorth :: EventCode
btnNorth = EventCode c'BTN_NORTH
btnX :: EventCode
btnX = EventCode c'BTN_X
btnWest :: EventCode
btnWest = EventCode c'BTN_WEST
btnY :: EventCode
btnY = EventCode c'BTN_Y
btnZ :: EventCode
btnZ = EventCode c'BTN_Z
btnTl :: EventCode
btnTl = EventCode c'BTN_TL
btnTr :: EventCode
btnTr = EventCode c'BTN_TR
btnTl2 :: EventCode
btnTl2 = EventCode c'BTN_TL2
btnTr2 :: EventCode
btnTr2 = EventCode c'BTN_TR2
btnSelect :: EventCode
btnSelect = EventCode c'BTN_SELECT
btnStart :: EventCode
btnStart = EventCode c'BTN_START
btnMode :: EventCode
btnMode = EventCode c'BTN_MODE
btnThumbl :: EventCode
btnThumbl = EventCode c'BTN_THUMBL
btnThumbr :: EventCode
btnThumbr = EventCode c'BTN_THUMBR
btnDigi :: EventCode
btnDigi = EventCode c'BTN_DIGI
btnToolPen :: EventCode
btnToolPen = EventCode c'BTN_TOOL_PEN
btnToolRubber :: EventCode
btnToolRubber = EventCode c'BTN_TOOL_RUBBER
btnToolBrush :: EventCode
btnToolBrush = EventCode c'BTN_TOOL_BRUSH
btnToolPencil :: EventCode
btnToolPencil = EventCode c'BTN_TOOL_PENCIL
btnToolAirbrush :: EventCode
btnToolAirbrush = EventCode c'BTN_TOOL_AIRBRUSH
btnToolFinger :: EventCode
btnToolFinger = EventCode c'BTN_TOOL_FINGER
btnToolMouse :: EventCode
btnToolMouse = EventCode c'BTN_TOOL_MOUSE
btnToolLens :: EventCode
btnToolLens = EventCode c'BTN_TOOL_LENS
btnToolQuinttap :: EventCode
btnToolQuinttap = EventCode c'BTN_TOOL_QUINTTAP
btnStylus3 :: EventCode
btnStylus3 = EventCode c'BTN_STYLUS3
btnTouch :: EventCode
btnTouch = EventCode c'BTN_TOUCH
btnStylus :: EventCode
btnStylus = EventCode c'BTN_STYLUS
btnStylus2 :: EventCode
btnStylus2 = EventCode c'BTN_STYLUS2
btnToolDoubletap :: EventCode
btnToolDoubletap = EventCode c'BTN_TOOL_DOUBLETAP
btnToolTripletap :: EventCode
btnToolTripletap = EventCode c'BTN_TOOL_TRIPLETAP
btnToolQuadtap :: EventCode
btnToolQuadtap = EventCode c'BTN_TOOL_QUADTAP
btnWheel :: EventCode
btnWheel = EventCode c'BTN_WHEEL
btnGearDown :: EventCode
btnGearDown = EventCode c'BTN_GEAR_DOWN
btnGearUp :: EventCode
btnGearUp = EventCode c'BTN_GEAR_UP
keyOk :: EventCode
keyOk = EventCode c'KEY_OK
keySelect :: EventCode
keySelect = EventCode c'KEY_SELECT
keyGoto :: EventCode
keyGoto = EventCode c'KEY_GOTO
keyClear :: EventCode
keyClear = EventCode c'KEY_CLEAR
keyPower2 :: EventCode
keyPower2 = EventCode c'KEY_POWER2
keyOption :: EventCode
keyOption = EventCode c'KEY_OPTION
keyInfo :: EventCode
keyInfo = EventCode c'KEY_INFO
keyTime :: EventCode
keyTime = EventCode c'KEY_TIME
keyVendor :: EventCode
keyVendor = EventCode c'KEY_VENDOR
keyArchive :: EventCode
keyArchive = EventCode c'KEY_ARCHIVE
keyProgram :: EventCode
keyProgram = EventCode c'KEY_PROGRAM
keyChannel :: EventCode
keyChannel = EventCode c'KEY_CHANNEL
keyFavorites :: EventCode
keyFavorites = EventCode c'KEY_FAVORITES
keyEpg :: EventCode
keyEpg = EventCode c'KEY_EPG
keyPvr :: EventCode
keyPvr = EventCode c'KEY_PVR
keyMhp :: EventCode
keyMhp = EventCode c'KEY_MHP
keyLanguage :: EventCode
keyLanguage = EventCode c'KEY_LANGUAGE
keyTitle :: EventCode
keyTitle = EventCode c'KEY_TITLE
keySubtitle :: EventCode
keySubtitle = EventCode c'KEY_SUBTITLE
keyAngle :: EventCode
keyAngle = EventCode c'KEY_ANGLE
keyZoom :: EventCode
keyZoom = EventCode c'KEY_ZOOM
keyMode :: EventCode
keyMode = EventCode c'KEY_MODE
keyKeyboard :: EventCode
keyKeyboard = EventCode c'KEY_KEYBOARD
keyScreen :: EventCode
keyScreen = EventCode c'KEY_SCREEN
keyPc :: EventCode
keyPc = EventCode c'KEY_PC
keyTv :: EventCode
keyTv = EventCode c'KEY_TV
keyTv2 :: EventCode
keyTv2 = EventCode c'KEY_TV2
keyVcr :: EventCode
keyVcr = EventCode c'KEY_VCR
keyVcr2 :: EventCode
keyVcr2 = EventCode c'KEY_VCR2
keySat :: EventCode
keySat = EventCode c'KEY_SAT
keySat2 :: EventCode
keySat2 = EventCode c'KEY_SAT2
keyCd :: EventCode
keyCd = EventCode c'KEY_CD
keyTape :: EventCode
keyTape = EventCode c'KEY_TAPE
keyRadio :: EventCode
keyRadio = EventCode c'KEY_RADIO
keyTuner :: EventCode
keyTuner = EventCode c'KEY_TUNER
keyPlayer :: EventCode
keyPlayer = EventCode c'KEY_PLAYER
keyText :: EventCode
keyText = EventCode c'KEY_TEXT
keyDvd :: EventCode
keyDvd = EventCode c'KEY_DVD
keyAux :: EventCode
keyAux = EventCode c'KEY_AUX
keyMp3 :: EventCode
keyMp3 = EventCode c'KEY_MP3
keyAudio :: EventCode
keyAudio = EventCode c'KEY_AUDIO
keyVideo :: EventCode
keyVideo = EventCode c'KEY_VIDEO
keyDirectory :: EventCode
keyDirectory = EventCode c'KEY_DIRECTORY
keyList :: EventCode
keyList = EventCode c'KEY_LIST
keyMemo :: EventCode
keyMemo = EventCode c'KEY_MEMO
keyCalendar :: EventCode
keyCalendar = EventCode c'KEY_CALENDAR
keyRed :: EventCode
keyRed = EventCode c'KEY_RED
keyGreen :: EventCode
keyGreen = EventCode c'KEY_GREEN
keyYellow :: EventCode
keyYellow = EventCode c'KEY_YELLOW
keyBlue :: EventCode
keyBlue = EventCode c'KEY_BLUE
keyChannelup :: EventCode
keyChannelup = EventCode c'KEY_CHANNELUP
keyChanneldown :: EventCode
keyChanneldown = EventCode c'KEY_CHANNELDOWN
keyFirst :: EventCode
keyFirst = EventCode c'KEY_FIRST
keyLast :: EventCode
keyLast = EventCode c'KEY_LAST
keyAb :: EventCode
keyAb = EventCode c'KEY_AB
keyNext :: EventCode
keyNext = EventCode c'KEY_NEXT
keyRestart :: EventCode
keyRestart = EventCode c'KEY_RESTART
keySlow :: EventCode
keySlow = EventCode c'KEY_SLOW
keyShuffle :: EventCode
keyShuffle = EventCode c'KEY_SHUFFLE
keyBreak :: EventCode
keyBreak = EventCode c'KEY_BREAK
keyPrevious :: EventCode
keyPrevious = EventCode c'KEY_PREVIOUS
keyDigits :: EventCode
keyDigits = EventCode c'KEY_DIGITS
keyTeen :: EventCode
keyTeen = EventCode c'KEY_TEEN
keyTwen :: EventCode
keyTwen = EventCode c'KEY_TWEN
keyVideophone :: EventCode
keyVideophone = EventCode c'KEY_VIDEOPHONE
keyGames :: EventCode
keyGames = EventCode c'KEY_GAMES
keyZoomin :: EventCode
keyZoomin = EventCode c'KEY_ZOOMIN
keyZoomout :: EventCode
keyZoomout = EventCode c'KEY_ZOOMOUT
keyZoomreset :: EventCode
keyZoomreset = EventCode c'KEY_ZOOMRESET
keyWordprocessor :: EventCode
keyWordprocessor = EventCode c'KEY_WORDPROCESSOR
keyEditor :: EventCode
keyEditor = EventCode c'KEY_EDITOR
keySpreadsheet :: EventCode
keySpreadsheet = EventCode c'KEY_SPREADSHEET
keyGraphicseditor :: EventCode
keyGraphicseditor = EventCode c'KEY_GRAPHICSEDITOR
keyPresentation :: EventCode
keyPresentation = EventCode c'KEY_PRESENTATION
keyDatabase :: EventCode
keyDatabase = EventCode c'KEY_DATABASE
keyNews :: EventCode
keyNews = EventCode c'KEY_NEWS
keyVoicemail :: EventCode
keyVoicemail = EventCode c'KEY_VOICEMAIL
keyAddressbook :: EventCode
keyAddressbook = EventCode c'KEY_ADDRESSBOOK
keyMessenger :: EventCode
keyMessenger = EventCode c'KEY_MESSENGER
keyDisplaytoggle :: EventCode
keyDisplaytoggle = EventCode c'KEY_DISPLAYTOGGLE
keyBrightnessToggle :: EventCode
keyBrightnessToggle = EventCode c'KEY_BRIGHTNESS_TOGGLE
keySpellcheck :: EventCode
keySpellcheck = EventCode c'KEY_SPELLCHECK
keyLogoff :: EventCode
keyLogoff = EventCode c'KEY_LOGOFF
keyDollar :: EventCode
keyDollar = EventCode c'KEY_DOLLAR
keyEuro :: EventCode
keyEuro = EventCode c'KEY_EURO
keyFrameback :: EventCode
keyFrameback = EventCode c'KEY_FRAMEBACK
keyFrameforward :: EventCode
keyFrameforward = EventCode c'KEY_FRAMEFORWARD
keyContextMenu :: EventCode
keyContextMenu = EventCode c'KEY_CONTEXT_MENU
keyMediaRepeat :: EventCode
keyMediaRepeat = EventCode c'KEY_MEDIA_REPEAT
key10Channelsup :: EventCode
key10Channelsup = EventCode c'KEY_10CHANNELSUP
key10Channelsdown :: EventCode
key10Channelsdown = EventCode c'KEY_10CHANNELSDOWN
keyImages :: EventCode
keyImages = EventCode c'KEY_IMAGES
keyDelEol :: EventCode
keyDelEol = EventCode c'KEY_DEL_EOL
keyDelEos :: EventCode
keyDelEos = EventCode c'KEY_DEL_EOS
keyInsLine :: EventCode
keyInsLine = EventCode c'KEY_INS_LINE
keyDelLine :: EventCode
keyDelLine = EventCode c'KEY_DEL_LINE
keyFn :: EventCode
keyFn = EventCode c'KEY_FN
keyFnEsc :: EventCode
keyFnEsc = EventCode c'KEY_FN_ESC
keyFnF1 :: EventCode
keyFnF1 = EventCode c'KEY_FN_F1
keyFnF2 :: EventCode
keyFnF2 = EventCode c'KEY_FN_F2
keyFnF3 :: EventCode
keyFnF3 = EventCode c'KEY_FN_F3
keyFnF4 :: EventCode
keyFnF4 = EventCode c'KEY_FN_F4
keyFnF5 :: EventCode
keyFnF5 = EventCode c'KEY_FN_F5
keyFnF6 :: EventCode
keyFnF6 = EventCode c'KEY_FN_F6
keyFnF7 :: EventCode
keyFnF7 = EventCode c'KEY_FN_F7
keyFnF8 :: EventCode
keyFnF8 = EventCode c'KEY_FN_F8
keyFnF9 :: EventCode
keyFnF9 = EventCode c'KEY_FN_F9
keyFnF10 :: EventCode
keyFnF10 = EventCode c'KEY_FN_F10
keyFnF11 :: EventCode
keyFnF11 = EventCode c'KEY_FN_F11
keyFnF12 :: EventCode
keyFnF12 = EventCode c'KEY_FN_F12
keyFn1 :: EventCode
keyFn1 = EventCode c'KEY_FN_1
keyFn2 :: EventCode
keyFn2 = EventCode c'KEY_FN_2
keyFnD :: EventCode
keyFnD = EventCode c'KEY_FN_D
keyFnE :: EventCode
keyFnE = EventCode c'KEY_FN_E
keyFnF :: EventCode
keyFnF = EventCode c'KEY_FN_F
keyFnS :: EventCode
keyFnS = EventCode c'KEY_FN_S
keyFnB :: EventCode
keyFnB = EventCode c'KEY_FN_B
keyBrlDot1 :: EventCode
keyBrlDot1 = EventCode c'KEY_BRL_DOT1
keyBrlDot2 :: EventCode
keyBrlDot2 = EventCode c'KEY_BRL_DOT2
keyBrlDot3 :: EventCode
keyBrlDot3 = EventCode c'KEY_BRL_DOT3
keyBrlDot4 :: EventCode
keyBrlDot4 = EventCode c'KEY_BRL_DOT4
keyBrlDot5 :: EventCode
keyBrlDot5 = EventCode c'KEY_BRL_DOT5
keyBrlDot6 :: EventCode
keyBrlDot6 = EventCode c'KEY_BRL_DOT6
keyBrlDot7 :: EventCode
keyBrlDot7 = EventCode c'KEY_BRL_DOT7
keyBrlDot8 :: EventCode
keyBrlDot8 = EventCode c'KEY_BRL_DOT8
keyBrlDot9 :: EventCode
keyBrlDot9 = EventCode c'KEY_BRL_DOT9
keyBrlDot10 :: EventCode
keyBrlDot10 = EventCode c'KEY_BRL_DOT10
keyNumeric0 :: EventCode
keyNumeric0 = EventCode c'KEY_NUMERIC_0
keyNumeric1 :: EventCode
keyNumeric1 = EventCode c'KEY_NUMERIC_1
keyNumeric2 :: EventCode
keyNumeric2 = EventCode c'KEY_NUMERIC_2
keyNumeric3 :: EventCode
keyNumeric3 = EventCode c'KEY_NUMERIC_3
keyNumeric4 :: EventCode
keyNumeric4 = EventCode c'KEY_NUMERIC_4
keyNumeric5 :: EventCode
keyNumeric5 = EventCode c'KEY_NUMERIC_5
keyNumeric6 :: EventCode
keyNumeric6 = EventCode c'KEY_NUMERIC_6
keyNumeric7 :: EventCode
keyNumeric7 = EventCode c'KEY_NUMERIC_7
keyNumeric8 :: EventCode
keyNumeric8 = EventCode c'KEY_NUMERIC_8
keyNumeric9 :: EventCode
keyNumeric9 = EventCode c'KEY_NUMERIC_9
keyNumericStar :: EventCode
keyNumericStar = EventCode c'KEY_NUMERIC_STAR
keyNumericPound :: EventCode
keyNumericPound = EventCode c'KEY_NUMERIC_POUND
keyNumericA :: EventCode
keyNumericA = EventCode c'KEY_NUMERIC_A
keyNumericB :: EventCode
keyNumericB = EventCode c'KEY_NUMERIC_B
keyNumericC :: EventCode
keyNumericC = EventCode c'KEY_NUMERIC_C
keyNumericD :: EventCode
keyNumericD = EventCode c'KEY_NUMERIC_D
keyCameraFocus :: EventCode
keyCameraFocus = EventCode c'KEY_CAMERA_FOCUS
keyWpsButton :: EventCode
keyWpsButton = EventCode c'KEY_WPS_BUTTON
keyTouchpadToggle :: EventCode
keyTouchpadToggle = EventCode c'KEY_TOUCHPAD_TOGGLE
keyTouchpadOn :: EventCode
keyTouchpadOn = EventCode c'KEY_TOUCHPAD_ON
keyTouchpadOff :: EventCode
keyTouchpadOff = EventCode c'KEY_TOUCHPAD_OFF
keyCameraZoomin :: EventCode
keyCameraZoomin = EventCode c'KEY_CAMERA_ZOOMIN
keyCameraZoomout :: EventCode
keyCameraZoomout = EventCode c'KEY_CAMERA_ZOOMOUT
keyCameraUp :: EventCode
keyCameraUp = EventCode c'KEY_CAMERA_UP
keyCameraDown :: EventCode
keyCameraDown = EventCode c'KEY_CAMERA_DOWN
keyCameraLeft :: EventCode
keyCameraLeft = EventCode c'KEY_CAMERA_LEFT
keyCameraRight :: EventCode
keyCameraRight = EventCode c'KEY_CAMERA_RIGHT
keyAttendantOn :: EventCode
keyAttendantOn = EventCode c'KEY_ATTENDANT_ON
keyAttendantOff :: EventCode
keyAttendantOff = EventCode c'KEY_ATTENDANT_OFF
keyAttendantToggle :: EventCode
keyAttendantToggle = EventCode c'KEY_ATTENDANT_TOGGLE
keyLightsToggle :: EventCode
keyLightsToggle = EventCode c'KEY_LIGHTS_TOGGLE
btnDpadUp :: EventCode
btnDpadUp = EventCode c'BTN_DPAD_UP
btnDpadDown :: EventCode
btnDpadDown = EventCode c'BTN_DPAD_DOWN
btnDpadLeft :: EventCode
btnDpadLeft = EventCode c'BTN_DPAD_LEFT
btnDpadRight :: EventCode
btnDpadRight = EventCode c'BTN_DPAD_RIGHT
keyAlsToggle :: EventCode
keyAlsToggle = EventCode c'KEY_ALS_TOGGLE
keyRotateLockToggle :: EventCode
keyRotateLockToggle = EventCode c'KEY_ROTATE_LOCK_TOGGLE
keyButtonconfig :: EventCode
keyButtonconfig = EventCode c'KEY_BUTTONCONFIG
keyTaskmanager :: EventCode
keyTaskmanager = EventCode c'KEY_TASKMANAGER
keyJournal :: EventCode
keyJournal = EventCode c'KEY_JOURNAL
keyControlpanel :: EventCode
keyControlpanel = EventCode c'KEY_CONTROLPANEL
keyAppselect :: EventCode
keyAppselect = EventCode c'KEY_APPSELECT
keyScreensaver :: EventCode
keyScreensaver = EventCode c'KEY_SCREENSAVER
keyVoicecommand :: EventCode
keyVoicecommand = EventCode c'KEY_VOICECOMMAND
keyAssistant :: EventCode
keyAssistant = EventCode c'KEY_ASSISTANT
keyBrightnessMin :: EventCode
keyBrightnessMin = EventCode c'KEY_BRIGHTNESS_MIN
keyBrightnessMax :: EventCode
keyBrightnessMax = EventCode c'KEY_BRIGHTNESS_MAX
keyKbdinputassistPrev :: EventCode
keyKbdinputassistPrev = EventCode c'KEY_KBDINPUTASSIST_PREV
keyKbdinputassistNext :: EventCode
keyKbdinputassistNext = EventCode c'KEY_KBDINPUTASSIST_NEXT
keyKbdinputassistPrevgroup :: EventCode
keyKbdinputassistPrevgroup = EventCode c'KEY_KBDINPUTASSIST_PREVGROUP
keyKbdinputassistNextgroup :: EventCode
keyKbdinputassistNextgroup = EventCode c'KEY_KBDINPUTASSIST_NEXTGROUP
keyKbdinputassistAccept :: EventCode
keyKbdinputassistAccept = EventCode c'KEY_KBDINPUTASSIST_ACCEPT
keyKbdinputassistCancel :: EventCode
keyKbdinputassistCancel = EventCode c'KEY_KBDINPUTASSIST_CANCEL
keyRightUp :: EventCode
keyRightUp = EventCode c'KEY_RIGHT_UP
keyRightDown :: EventCode
keyRightDown = EventCode c'KEY_RIGHT_DOWN
keyLeftUp :: EventCode
keyLeftUp = EventCode c'KEY_LEFT_UP
keyLeftDown :: EventCode
keyLeftDown = EventCode c'KEY_LEFT_DOWN
keyRootMenu :: EventCode
keyRootMenu = EventCode c'KEY_ROOT_MENU
keyMediaTopMenu :: EventCode
keyMediaTopMenu = EventCode c'KEY_MEDIA_TOP_MENU
keyNumeric11 :: EventCode
keyNumeric11 = EventCode c'KEY_NUMERIC_11
keyNumeric12 :: EventCode
keyNumeric12 = EventCode c'KEY_NUMERIC_12
keyAudioDesc :: EventCode
keyAudioDesc = EventCode c'KEY_AUDIO_DESC
key3DMode :: EventCode
key3DMode = EventCode c'KEY_3D_MODE
keyNextFavorite :: EventCode
keyNextFavorite = EventCode c'KEY_NEXT_FAVORITE
keyStopRecord :: EventCode
keyStopRecord = EventCode c'KEY_STOP_RECORD
keyPauseRecord :: EventCode
keyPauseRecord = EventCode c'KEY_PAUSE_RECORD
keyVod :: EventCode
keyVod = EventCode c'KEY_VOD
keyUnmute :: EventCode
keyUnmute = EventCode c'KEY_UNMUTE
keyFastreverse :: EventCode
keyFastreverse = EventCode c'KEY_FASTREVERSE
keySlowreverse :: EventCode
keySlowreverse = EventCode c'KEY_SLOWREVERSE
keyData :: EventCode
keyData = EventCode c'KEY_DATA
keyOnscreenKeyboard :: EventCode
keyOnscreenKeyboard = EventCode c'KEY_ONSCREEN_KEYBOARD
btnTriggerHappy :: EventCode
btnTriggerHappy = EventCode c'BTN_TRIGGER_HAPPY
btnTriggerHappy1 :: EventCode
btnTriggerHappy1 = EventCode c'BTN_TRIGGER_HAPPY1
btnTriggerHappy2 :: EventCode
btnTriggerHappy2 = EventCode c'BTN_TRIGGER_HAPPY2
btnTriggerHappy3 :: EventCode
btnTriggerHappy3 = EventCode c'BTN_TRIGGER_HAPPY3
btnTriggerHappy4 :: EventCode
btnTriggerHappy4 = EventCode c'BTN_TRIGGER_HAPPY4
btnTriggerHappy5 :: EventCode
btnTriggerHappy5 = EventCode c'BTN_TRIGGER_HAPPY5
btnTriggerHappy6 :: EventCode
btnTriggerHappy6 = EventCode c'BTN_TRIGGER_HAPPY6
btnTriggerHappy7 :: EventCode
btnTriggerHappy7 = EventCode c'BTN_TRIGGER_HAPPY7
btnTriggerHappy8 :: EventCode
btnTriggerHappy8 = EventCode c'BTN_TRIGGER_HAPPY8
btnTriggerHappy9 :: EventCode
btnTriggerHappy9 = EventCode c'BTN_TRIGGER_HAPPY9
btnTriggerHappy10 :: EventCode
btnTriggerHappy10 = EventCode c'BTN_TRIGGER_HAPPY10
btnTriggerHappy11 :: EventCode
btnTriggerHappy11 = EventCode c'BTN_TRIGGER_HAPPY11
btnTriggerHappy12 :: EventCode
btnTriggerHappy12 = EventCode c'BTN_TRIGGER_HAPPY12
btnTriggerHappy13 :: EventCode
btnTriggerHappy13 = EventCode c'BTN_TRIGGER_HAPPY13
btnTriggerHappy14 :: EventCode
btnTriggerHappy14 = EventCode c'BTN_TRIGGER_HAPPY14
btnTriggerHappy15 :: EventCode
btnTriggerHappy15 = EventCode c'BTN_TRIGGER_HAPPY15
btnTriggerHappy16 :: EventCode
btnTriggerHappy16 = EventCode c'BTN_TRIGGER_HAPPY16
btnTriggerHappy17 :: EventCode
btnTriggerHappy17 = EventCode c'BTN_TRIGGER_HAPPY17
btnTriggerHappy18 :: EventCode
btnTriggerHappy18 = EventCode c'BTN_TRIGGER_HAPPY18
btnTriggerHappy19 :: EventCode
btnTriggerHappy19 = EventCode c'BTN_TRIGGER_HAPPY19
btnTriggerHappy20 :: EventCode
btnTriggerHappy20 = EventCode c'BTN_TRIGGER_HAPPY20
btnTriggerHappy21 :: EventCode
btnTriggerHappy21 = EventCode c'BTN_TRIGGER_HAPPY21
btnTriggerHappy22 :: EventCode
btnTriggerHappy22 = EventCode c'BTN_TRIGGER_HAPPY22
btnTriggerHappy23 :: EventCode
btnTriggerHappy23 = EventCode c'BTN_TRIGGER_HAPPY23
btnTriggerHappy24 :: EventCode
btnTriggerHappy24 = EventCode c'BTN_TRIGGER_HAPPY24
btnTriggerHappy25 :: EventCode
btnTriggerHappy25 = EventCode c'BTN_TRIGGER_HAPPY25
btnTriggerHappy26 :: EventCode
btnTriggerHappy26 = EventCode c'BTN_TRIGGER_HAPPY26
btnTriggerHappy27 :: EventCode
btnTriggerHappy27 = EventCode c'BTN_TRIGGER_HAPPY27
btnTriggerHappy28 :: EventCode
btnTriggerHappy28 = EventCode c'BTN_TRIGGER_HAPPY28
btnTriggerHappy29 :: EventCode
btnTriggerHappy29 = EventCode c'BTN_TRIGGER_HAPPY29
btnTriggerHappy30 :: EventCode
btnTriggerHappy30 = EventCode c'BTN_TRIGGER_HAPPY30
btnTriggerHappy31 :: EventCode
btnTriggerHappy31 = EventCode c'BTN_TRIGGER_HAPPY31
btnTriggerHappy32 :: EventCode
btnTriggerHappy32 = EventCode c'BTN_TRIGGER_HAPPY32
btnTriggerHappy33 :: EventCode
btnTriggerHappy33 = EventCode c'BTN_TRIGGER_HAPPY33
btnTriggerHappy34 :: EventCode
btnTriggerHappy34 = EventCode c'BTN_TRIGGER_HAPPY34
btnTriggerHappy35 :: EventCode
btnTriggerHappy35 = EventCode c'BTN_TRIGGER_HAPPY35
btnTriggerHappy36 :: EventCode
btnTriggerHappy36 = EventCode c'BTN_TRIGGER_HAPPY36
btnTriggerHappy37 :: EventCode
btnTriggerHappy37 = EventCode c'BTN_TRIGGER_HAPPY37
btnTriggerHappy38 :: EventCode
btnTriggerHappy38 = EventCode c'BTN_TRIGGER_HAPPY38
btnTriggerHappy39 :: EventCode
btnTriggerHappy39 = EventCode c'BTN_TRIGGER_HAPPY39
btnTriggerHappy40 :: EventCode
btnTriggerHappy40 = EventCode c'BTN_TRIGGER_HAPPY40

relX :: EventCode
relX = EventCode c'REL_X
relY :: EventCode
relY = EventCode c'REL_Y
relZ :: EventCode
relZ = EventCode c'REL_Z
relRx :: EventCode
relRx = EventCode c'REL_RX
relRy :: EventCode
relRy = EventCode c'REL_RY
relRz :: EventCode
relRz = EventCode c'REL_RZ
relHwheel :: EventCode
relHwheel = EventCode c'REL_HWHEEL
relDial :: EventCode
relDial = EventCode c'REL_DIAL
relWheel :: EventCode
relWheel = EventCode c'REL_WHEEL
relMisc :: EventCode
relMisc = EventCode c'REL_MISC

absX :: EventCode
absX = EventCode c'ABS_X
absY :: EventCode
absY = EventCode c'ABS_Y
absZ :: EventCode
absZ = EventCode c'ABS_Z
absRx :: EventCode
absRx = EventCode c'ABS_RX
absRy :: EventCode
absRy = EventCode c'ABS_RY
absRz :: EventCode
absRz = EventCode c'ABS_RZ
absThrottle :: EventCode
absThrottle = EventCode c'ABS_THROTTLE
absRudder :: EventCode
absRudder = EventCode c'ABS_RUDDER
absWheel :: EventCode
absWheel = EventCode c'ABS_WHEEL
absGas :: EventCode
absGas = EventCode c'ABS_GAS
absBrake :: EventCode
absBrake = EventCode c'ABS_BRAKE
absHat0X :: EventCode
absHat0X = EventCode c'ABS_HAT0X
absHat0Y :: EventCode
absHat0Y = EventCode c'ABS_HAT0Y
absHat1X :: EventCode
absHat1X = EventCode c'ABS_HAT1X
absHat1Y :: EventCode
absHat1Y = EventCode c'ABS_HAT1Y
absHat2X :: EventCode
absHat2X = EventCode c'ABS_HAT2X
absHat2Y :: EventCode
absHat2Y = EventCode c'ABS_HAT2Y
absHat3X :: EventCode
absHat3X = EventCode c'ABS_HAT3X
absHat3Y :: EventCode
absHat3Y = EventCode c'ABS_HAT3Y
absPressure :: EventCode
absPressure = EventCode c'ABS_PRESSURE
absDistance :: EventCode
absDistance = EventCode c'ABS_DISTANCE
absTiltX :: EventCode
absTiltX = EventCode c'ABS_TILT_X
absTiltY :: EventCode
absTiltY = EventCode c'ABS_TILT_Y
absToolWidth :: EventCode
absToolWidth = EventCode c'ABS_TOOL_WIDTH
absVolume :: EventCode
absVolume = EventCode c'ABS_VOLUME
absMisc :: EventCode
absMisc = EventCode c'ABS_MISC
absMtSlot :: EventCode
absMtSlot = EventCode c'ABS_MT_SLOT
absMtTouchMajor :: EventCode
absMtTouchMajor = EventCode c'ABS_MT_TOUCH_MAJOR
absMtTouchMinor :: EventCode
absMtTouchMinor = EventCode c'ABS_MT_TOUCH_MINOR
absMtWidthMajor :: EventCode
absMtWidthMajor = EventCode c'ABS_MT_WIDTH_MAJOR
absMtWidthMinor :: EventCode
absMtWidthMinor = EventCode c'ABS_MT_WIDTH_MINOR
absMtOrientation :: EventCode
absMtOrientation = EventCode c'ABS_MT_ORIENTATION
absMtPositionX :: EventCode
absMtPositionX = EventCode c'ABS_MT_POSITION_X
absMtPositionY :: EventCode
absMtPositionY = EventCode c'ABS_MT_POSITION_Y
absMtToolType :: EventCode
absMtToolType = EventCode c'ABS_MT_TOOL_TYPE
absMtBlobId :: EventCode
absMtBlobId = EventCode c'ABS_MT_BLOB_ID
absMtTrackingId :: EventCode
absMtTrackingId = EventCode c'ABS_MT_TRACKING_ID
absMtPressure :: EventCode
absMtPressure = EventCode c'ABS_MT_PRESSURE
absMtDistance :: EventCode
absMtDistance = EventCode c'ABS_MT_DISTANCE
absMtToolX :: EventCode
absMtToolX = EventCode c'ABS_MT_TOOL_X
absMtToolY :: EventCode
absMtToolY = EventCode c'ABS_MT_TOOL_Y

swLid :: EventCode
swLid = EventCode c'SW_LID
swTabletMode :: EventCode
swTabletMode = EventCode c'SW_TABLET_MODE
swHeadphoneInsert :: EventCode
swHeadphoneInsert = EventCode c'SW_HEADPHONE_INSERT
swRfkillAll :: EventCode
swRfkillAll = EventCode c'SW_RFKILL_ALL
swMicrophoneInsert :: EventCode
swMicrophoneInsert = EventCode c'SW_MICROPHONE_INSERT
swDock :: EventCode
swDock = EventCode c'SW_DOCK
swLineoutInsert :: EventCode
swLineoutInsert = EventCode c'SW_LINEOUT_INSERT
swJackPhysicalInsert :: EventCode
swJackPhysicalInsert = EventCode c'SW_JACK_PHYSICAL_INSERT
swVideooutInsert :: EventCode
swVideooutInsert = EventCode c'SW_VIDEOOUT_INSERT
swCameraLensCover :: EventCode
swCameraLensCover = EventCode c'SW_CAMERA_LENS_COVER
swKeypadSlide :: EventCode
swKeypadSlide = EventCode c'SW_KEYPAD_SLIDE
swFrontProximity :: EventCode
swFrontProximity = EventCode c'SW_FRONT_PROXIMITY
swRotateLock :: EventCode
swRotateLock = EventCode c'SW_ROTATE_LOCK
swLineinInsert :: EventCode
swLineinInsert = EventCode c'SW_LINEIN_INSERT
swMuteDevice :: EventCode
swMuteDevice = EventCode c'SW_MUTE_DEVICE
swPenInserted :: EventCode
swPenInserted = EventCode c'SW_PEN_INSERTED

mscSerial :: EventCode
mscSerial = EventCode c'MSC_SERIAL
mscPulseled :: EventCode
mscPulseled = EventCode c'MSC_PULSELED
mscGesture :: EventCode
mscGesture = EventCode c'MSC_GESTURE
mscRaw :: EventCode
mscRaw = EventCode c'MSC_RAW
mscScan :: EventCode
mscScan = EventCode c'MSC_SCAN
mscTimestamp :: EventCode
mscTimestamp = EventCode c'MSC_TIMESTAMP

ledNuml :: EventCode
ledNuml = EventCode c'LED_NUML
ledCapsl :: EventCode
ledCapsl = EventCode c'LED_CAPSL
ledScrolll :: EventCode
ledScrolll = EventCode c'LED_SCROLLL
ledCompose :: EventCode
ledCompose = EventCode c'LED_COMPOSE
ledKana :: EventCode
ledKana = EventCode c'LED_KANA
ledSleep :: EventCode
ledSleep = EventCode c'LED_SLEEP
ledSuspend :: EventCode
ledSuspend = EventCode c'LED_SUSPEND
ledMute :: EventCode
ledMute = EventCode c'LED_MUTE
ledMisc :: EventCode
ledMisc = EventCode c'LED_MISC
ledMail :: EventCode
ledMail = EventCode c'LED_MAIL
ledCharging :: EventCode
ledCharging = EventCode c'LED_CHARGING

repDelay :: EventCode
repDelay = EventCode c'REP_DELAY
repPeriod :: EventCode
repPeriod = EventCode c'REP_PERIOD

sndClick :: EventCode
sndClick = EventCode c'SND_CLICK
sndBell :: EventCode
sndBell = EventCode c'SND_BELL
sndTone :: EventCode
sndTone = EventCode c'SND_TONE
