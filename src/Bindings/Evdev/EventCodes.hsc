#include <bindings.dsl.h>
#include <linux/input-event-codes.h>

module Bindings.Evdev.EventCodes where
#strict_import

#num INPUT_PROP_POINTER
#num INPUT_PROP_DIRECT
#num INPUT_PROP_BUTTONPAD
#num INPUT_PROP_SEMI_MT
#num INPUT_PROP_TOPBUTTONPAD
#num INPUT_PROP_POINTING_STICK
#num INPUT_PROP_ACCELEROMETER
#num INPUT_PROP_MAX
#num INPUT_PROP_CNT
#num EV_SYN
#num EV_KEY
#num EV_REL
#num EV_ABS
#num EV_MSC
#num EV_SW
#num EV_LED
#num EV_SND
#num EV_REP
#num EV_FF
#num EV_PWR
#num EV_FF_STATUS
#num EV_MAX
#num EV_CNT
#num SYN_REPORT
#num SYN_CONFIG
#num SYN_MT_REPORT
#num SYN_DROPPED
#num SYN_MAX
#num SYN_CNT
#num KEY_RESERVED
#num KEY_ESC
#num KEY_1
#num KEY_2
#num KEY_3
#num KEY_4
#num KEY_5
#num KEY_6
#num KEY_7
#num KEY_8
#num KEY_9
#num KEY_0
#num KEY_MINUS
#num KEY_EQUAL
#num KEY_BACKSPACE
#num KEY_TAB
#num KEY_Q
#num KEY_W
#num KEY_E
#num KEY_R
#num KEY_T
#num KEY_Y
#num KEY_U
#num KEY_I
#num KEY_O
#num KEY_P
#num KEY_LEFTBRACE
#num KEY_RIGHTBRACE
#num KEY_ENTER
#num KEY_LEFTCTRL
#num KEY_A
#num KEY_S
#num KEY_D
#num KEY_F
#num KEY_G
#num KEY_H
#num KEY_J
#num KEY_K
#num KEY_L
#num KEY_SEMICOLON
#num KEY_APOSTROPHE
#num KEY_GRAVE
#num KEY_LEFTSHIFT
#num KEY_BACKSLASH
#num KEY_Z
#num KEY_X
#num KEY_C
#num KEY_V
#num KEY_B
#num KEY_N
#num KEY_M
#num KEY_COMMA
#num KEY_DOT
#num KEY_SLASH
#num KEY_RIGHTSHIFT
#num KEY_KPASTERISK
#num KEY_LEFTALT
#num KEY_SPACE
#num KEY_CAPSLOCK
#num KEY_F1
#num KEY_F2
#num KEY_F3
#num KEY_F4
#num KEY_F5
#num KEY_F6
#num KEY_F7
#num KEY_F8
#num KEY_F9
#num KEY_F10
#num KEY_NUMLOCK
#num KEY_SCROLLLOCK
#num KEY_KP7
#num KEY_KP8
#num KEY_KP9
#num KEY_KPMINUS
#num KEY_KP4
#num KEY_KP5
#num KEY_KP6
#num KEY_KPPLUS
#num KEY_KP1
#num KEY_KP2
#num KEY_KP3
#num KEY_KP0
#num KEY_KPDOT
#num KEY_ZENKAKUHANKAKU
#num KEY_102ND
#num KEY_F11
#num KEY_F12
#num KEY_RO
#num KEY_KATAKANA
#num KEY_HIRAGANA
#num KEY_HENKAN
#num KEY_KATAKANAHIRAGANA
#num KEY_MUHENKAN
#num KEY_KPJPCOMMA
#num KEY_KPENTER
#num KEY_RIGHTCTRL
#num KEY_KPSLASH
#num KEY_SYSRQ
#num KEY_RIGHTALT
#num KEY_LINEFEED
#num KEY_HOME
#num KEY_UP
#num KEY_PAGEUP
#num KEY_LEFT
#num KEY_RIGHT
#num KEY_END
#num KEY_DOWN
#num KEY_PAGEDOWN
#num KEY_INSERT
#num KEY_DELETE
#num KEY_MACRO
#num KEY_MUTE
#num KEY_VOLUMEDOWN
#num KEY_VOLUMEUP
#num KEY_POWER
#num KEY_KPEQUAL
#num KEY_KPPLUSMINUS
#num KEY_PAUSE
#num KEY_SCALE
#num KEY_KPCOMMA
#num KEY_HANGEUL
#num KEY_HANGUEL
#num KEY_HANJA
#num KEY_YEN
#num KEY_LEFTMETA
#num KEY_RIGHTMETA
#num KEY_COMPOSE
#num KEY_STOP
#num KEY_AGAIN
#num KEY_PROPS
#num KEY_UNDO
#num KEY_FRONT
#num KEY_COPY
#num KEY_OPEN
#num KEY_PASTE
#num KEY_FIND
#num KEY_CUT
#num KEY_HELP
#num KEY_MENU
#num KEY_CALC
#num KEY_SETUP
#num KEY_SLEEP
#num KEY_WAKEUP
#num KEY_FILE
#num KEY_SENDFILE
#num KEY_DELETEFILE
#num KEY_XFER
#num KEY_PROG1
#num KEY_PROG2
#num KEY_WWW
#num KEY_MSDOS
#num KEY_COFFEE
#num KEY_SCREENLOCK
#num KEY_ROTATE_DISPLAY
#num KEY_DIRECTION
#num KEY_CYCLEWINDOWS
#num KEY_MAIL
#num KEY_BOOKMARKS
#num KEY_COMPUTER
#num KEY_BACK
#num KEY_FORWARD
#num KEY_CLOSECD
#num KEY_EJECTCD
#num KEY_EJECTCLOSECD
#num KEY_NEXTSONG
#num KEY_PLAYPAUSE
#num KEY_PREVIOUSSONG
#num KEY_STOPCD
#num KEY_RECORD
#num KEY_REWIND
#num KEY_PHONE
#num KEY_ISO
#num KEY_CONFIG
#num KEY_HOMEPAGE
#num KEY_REFRESH
#num KEY_EXIT
#num KEY_MOVE
#num KEY_EDIT
#num KEY_SCROLLUP
#num KEY_SCROLLDOWN
#num KEY_KPLEFTPAREN
#num KEY_KPRIGHTPAREN
#num KEY_NEW
#num KEY_REDO
#num KEY_F13
#num KEY_F14
#num KEY_F15
#num KEY_F16
#num KEY_F17
#num KEY_F18
#num KEY_F19
#num KEY_F20
#num KEY_F21
#num KEY_F22
#num KEY_F23
#num KEY_F24
#num KEY_PLAYCD
#num KEY_PAUSECD
#num KEY_PROG3
#num KEY_PROG4
#num KEY_DASHBOARD
#num KEY_SUSPEND
#num KEY_CLOSE
#num KEY_PLAY
#num KEY_FASTFORWARD
#num KEY_BASSBOOST
#num KEY_PRINT
#num KEY_HP
#num KEY_CAMERA
#num KEY_SOUND
#num KEY_QUESTION
#num KEY_EMAIL
#num KEY_CHAT
#num KEY_SEARCH
#num KEY_CONNECT
#num KEY_FINANCE
#num KEY_SPORT
#num KEY_SHOP
#num KEY_ALTERASE
#num KEY_CANCEL
#num KEY_BRIGHTNESSDOWN
#num KEY_BRIGHTNESSUP
#num KEY_MEDIA
#num KEY_SWITCHVIDEOMODE
#num KEY_KBDILLUMTOGGLE
#num KEY_KBDILLUMDOWN
#num KEY_KBDILLUMUP
#num KEY_SEND
#num KEY_REPLY
#num KEY_FORWARDMAIL
#num KEY_SAVE
#num KEY_DOCUMENTS
#num KEY_BATTERY
#num KEY_BLUETOOTH
#num KEY_WLAN
#num KEY_UWB
#num KEY_UNKNOWN
#num KEY_VIDEO_NEXT
#num KEY_VIDEO_PREV
#num KEY_BRIGHTNESS_CYCLE
#num KEY_BRIGHTNESS_AUTO
#num KEY_BRIGHTNESS_ZERO
#num KEY_DISPLAY_OFF
#num KEY_WWAN
#num KEY_WIMAX
#num KEY_RFKILL
#num KEY_MICMUTE
#num BTN_MISC
#num BTN_0
#num BTN_1
#num BTN_2
#num BTN_3
#num BTN_4
#num BTN_5
#num BTN_6
#num BTN_7
#num BTN_8
#num BTN_9
#num BTN_MOUSE
#num BTN_LEFT
#num BTN_RIGHT
#num BTN_MIDDLE
#num BTN_SIDE
#num BTN_EXTRA
#num BTN_FORWARD
#num BTN_BACK
#num BTN_TASK
#num BTN_JOYSTICK
#num BTN_TRIGGER
#num BTN_THUMB
#num BTN_THUMB2
#num BTN_TOP
#num BTN_TOP2
#num BTN_PINKIE
#num BTN_BASE
#num BTN_BASE2
#num BTN_BASE3
#num BTN_BASE4
#num BTN_BASE5
#num BTN_BASE6
#num BTN_DEAD
#num BTN_GAMEPAD
#num BTN_SOUTH
#num BTN_A
#num BTN_EAST
#num BTN_B
#num BTN_C
#num BTN_NORTH
#num BTN_X
#num BTN_WEST
#num BTN_Y
#num BTN_Z
#num BTN_TL
#num BTN_TR
#num BTN_TL2
#num BTN_TR2
#num BTN_SELECT
#num BTN_START
#num BTN_MODE
#num BTN_THUMBL
#num BTN_THUMBR
#num BTN_DIGI
#num BTN_TOOL_PEN
#num BTN_TOOL_RUBBER
#num BTN_TOOL_BRUSH
#num BTN_TOOL_PENCIL
#num BTN_TOOL_AIRBRUSH
#num BTN_TOOL_FINGER
#num BTN_TOOL_MOUSE
#num BTN_TOOL_LENS
#num BTN_TOOL_QUINTTAP
#num BTN_STYLUS3
#num BTN_TOUCH
#num BTN_STYLUS
#num BTN_STYLUS2
#num BTN_TOOL_DOUBLETAP
#num BTN_TOOL_TRIPLETAP
#num BTN_TOOL_QUADTAP
#num BTN_WHEEL
#num BTN_GEAR_DOWN
#num BTN_GEAR_UP
#num KEY_OK
#num KEY_SELECT
#num KEY_GOTO
#num KEY_CLEAR
#num KEY_POWER2
#num KEY_OPTION
#num KEY_INFO
#num KEY_TIME
#num KEY_VENDOR
#num KEY_ARCHIVE
#num KEY_PROGRAM
#num KEY_CHANNEL
#num KEY_FAVORITES
#num KEY_EPG
#num KEY_PVR
#num KEY_MHP
#num KEY_LANGUAGE
#num KEY_TITLE
#num KEY_SUBTITLE
#num KEY_ANGLE
#num KEY_ZOOM
#num KEY_MODE
#num KEY_KEYBOARD
#num KEY_SCREEN
#num KEY_PC
#num KEY_TV
#num KEY_TV2
#num KEY_VCR
#num KEY_VCR2
#num KEY_SAT
#num KEY_SAT2
#num KEY_CD
#num KEY_TAPE
#num KEY_RADIO
#num KEY_TUNER
#num KEY_PLAYER
#num KEY_TEXT
#num KEY_DVD
#num KEY_AUX
#num KEY_MP3
#num KEY_AUDIO
#num KEY_VIDEO
#num KEY_DIRECTORY
#num KEY_LIST
#num KEY_MEMO
#num KEY_CALENDAR
#num KEY_RED
#num KEY_GREEN
#num KEY_YELLOW
#num KEY_BLUE
#num KEY_CHANNELUP
#num KEY_CHANNELDOWN
#num KEY_FIRST
#num KEY_LAST
#num KEY_AB
#num KEY_NEXT
#num KEY_RESTART
#num KEY_SLOW
#num KEY_SHUFFLE
#num KEY_BREAK
#num KEY_PREVIOUS
#num KEY_DIGITS
#num KEY_TEEN
#num KEY_TWEN
#num KEY_VIDEOPHONE
#num KEY_GAMES
#num KEY_ZOOMIN
#num KEY_ZOOMOUT
#num KEY_ZOOMRESET
#num KEY_WORDPROCESSOR
#num KEY_EDITOR
#num KEY_SPREADSHEET
#num KEY_GRAPHICSEDITOR
#num KEY_PRESENTATION
#num KEY_DATABASE
#num KEY_NEWS
#num KEY_VOICEMAIL
#num KEY_ADDRESSBOOK
#num KEY_MESSENGER
#num KEY_DISPLAYTOGGLE
#num KEY_BRIGHTNESS_TOGGLE
#num KEY_SPELLCHECK
#num KEY_LOGOFF
#num KEY_DOLLAR
#num KEY_EURO
#num KEY_FRAMEBACK
#num KEY_FRAMEFORWARD
#num KEY_CONTEXT_MENU
#num KEY_MEDIA_REPEAT
#num KEY_10CHANNELSUP
#num KEY_10CHANNELSDOWN
#num KEY_IMAGES
#num KEY_DEL_EOL
#num KEY_DEL_EOS
#num KEY_INS_LINE
#num KEY_DEL_LINE
#num KEY_FN
#num KEY_FN_ESC
#num KEY_FN_F1
#num KEY_FN_F2
#num KEY_FN_F3
#num KEY_FN_F4
#num KEY_FN_F5
#num KEY_FN_F6
#num KEY_FN_F7
#num KEY_FN_F8
#num KEY_FN_F9
#num KEY_FN_F10
#num KEY_FN_F11
#num KEY_FN_F12
#num KEY_FN_1
#num KEY_FN_2
#num KEY_FN_D
#num KEY_FN_E
#num KEY_FN_F
#num KEY_FN_S
#num KEY_FN_B
#num KEY_BRL_DOT1
#num KEY_BRL_DOT2
#num KEY_BRL_DOT3
#num KEY_BRL_DOT4
#num KEY_BRL_DOT5
#num KEY_BRL_DOT6
#num KEY_BRL_DOT7
#num KEY_BRL_DOT8
#num KEY_BRL_DOT9
#num KEY_BRL_DOT10
#num KEY_NUMERIC_0
#num KEY_NUMERIC_1
#num KEY_NUMERIC_2
#num KEY_NUMERIC_3
#num KEY_NUMERIC_4
#num KEY_NUMERIC_5
#num KEY_NUMERIC_6
#num KEY_NUMERIC_7
#num KEY_NUMERIC_8
#num KEY_NUMERIC_9
#num KEY_NUMERIC_STAR
#num KEY_NUMERIC_POUND
#num KEY_NUMERIC_A
#num KEY_NUMERIC_B
#num KEY_NUMERIC_C
#num KEY_NUMERIC_D
#num KEY_CAMERA_FOCUS
#num KEY_WPS_BUTTON
#num KEY_TOUCHPAD_TOGGLE
#num KEY_TOUCHPAD_ON
#num KEY_TOUCHPAD_OFF
#num KEY_CAMERA_ZOOMIN
#num KEY_CAMERA_ZOOMOUT
#num KEY_CAMERA_UP
#num KEY_CAMERA_DOWN
#num KEY_CAMERA_LEFT
#num KEY_CAMERA_RIGHT
#num KEY_ATTENDANT_ON
#num KEY_ATTENDANT_OFF
#num KEY_ATTENDANT_TOGGLE
#num KEY_LIGHTS_TOGGLE
#num BTN_DPAD_UP
#num BTN_DPAD_DOWN
#num BTN_DPAD_LEFT
#num BTN_DPAD_RIGHT
#num KEY_ALS_TOGGLE
#num KEY_ROTATE_LOCK_TOGGLE
#num KEY_BUTTONCONFIG
#num KEY_TASKMANAGER
#num KEY_JOURNAL
#num KEY_CONTROLPANEL
#num KEY_APPSELECT
#num KEY_SCREENSAVER
#num KEY_VOICECOMMAND
#num KEY_ASSISTANT
#num KEY_BRIGHTNESS_MIN
#num KEY_BRIGHTNESS_MAX
#num KEY_KBDINPUTASSIST_PREV
#num KEY_KBDINPUTASSIST_NEXT
#num KEY_KBDINPUTASSIST_PREVGROUP
#num KEY_KBDINPUTASSIST_NEXTGROUP
#num KEY_KBDINPUTASSIST_ACCEPT
#num KEY_KBDINPUTASSIST_CANCEL
#num KEY_RIGHT_UP
#num KEY_RIGHT_DOWN
#num KEY_LEFT_UP
#num KEY_LEFT_DOWN
#num KEY_ROOT_MENU
#num KEY_MEDIA_TOP_MENU
#num KEY_NUMERIC_11
#num KEY_NUMERIC_12
#num KEY_AUDIO_DESC
#num KEY_3D_MODE
#num KEY_NEXT_FAVORITE
#num KEY_STOP_RECORD
#num KEY_PAUSE_RECORD
#num KEY_VOD
#num KEY_UNMUTE
#num KEY_FASTREVERSE
#num KEY_SLOWREVERSE
#num KEY_DATA
#num KEY_ONSCREEN_KEYBOARD
#num BTN_TRIGGER_HAPPY
#num BTN_TRIGGER_HAPPY1
#num BTN_TRIGGER_HAPPY2
#num BTN_TRIGGER_HAPPY3
#num BTN_TRIGGER_HAPPY4
#num BTN_TRIGGER_HAPPY5
#num BTN_TRIGGER_HAPPY6
#num BTN_TRIGGER_HAPPY7
#num BTN_TRIGGER_HAPPY8
#num BTN_TRIGGER_HAPPY9
#num BTN_TRIGGER_HAPPY10
#num BTN_TRIGGER_HAPPY11
#num BTN_TRIGGER_HAPPY12
#num BTN_TRIGGER_HAPPY13
#num BTN_TRIGGER_HAPPY14
#num BTN_TRIGGER_HAPPY15
#num BTN_TRIGGER_HAPPY16
#num BTN_TRIGGER_HAPPY17
#num BTN_TRIGGER_HAPPY18
#num BTN_TRIGGER_HAPPY19
#num BTN_TRIGGER_HAPPY20
#num BTN_TRIGGER_HAPPY21
#num BTN_TRIGGER_HAPPY22
#num BTN_TRIGGER_HAPPY23
#num BTN_TRIGGER_HAPPY24
#num BTN_TRIGGER_HAPPY25
#num BTN_TRIGGER_HAPPY26
#num BTN_TRIGGER_HAPPY27
#num BTN_TRIGGER_HAPPY28
#num BTN_TRIGGER_HAPPY29
#num BTN_TRIGGER_HAPPY30
#num BTN_TRIGGER_HAPPY31
#num BTN_TRIGGER_HAPPY32
#num BTN_TRIGGER_HAPPY33
#num BTN_TRIGGER_HAPPY34
#num BTN_TRIGGER_HAPPY35
#num BTN_TRIGGER_HAPPY36
#num BTN_TRIGGER_HAPPY37
#num BTN_TRIGGER_HAPPY38
#num BTN_TRIGGER_HAPPY39
#num BTN_TRIGGER_HAPPY40
#num KEY_MIN_INTERESTING
#num KEY_MAX
#num KEY_CNT
#num REL_X
#num REL_Y
#num REL_Z
#num REL_RX
#num REL_RY
#num REL_RZ
#num REL_HWHEEL
#num REL_DIAL
#num REL_WHEEL
#num REL_MISC
#num REL_MAX
#num REL_CNT
#num ABS_X
#num ABS_Y
#num ABS_Z
#num ABS_RX
#num ABS_RY
#num ABS_RZ
#num ABS_THROTTLE
#num ABS_RUDDER
#num ABS_WHEEL
#num ABS_GAS
#num ABS_BRAKE
#num ABS_HAT0X
#num ABS_HAT0Y
#num ABS_HAT1X
#num ABS_HAT1Y
#num ABS_HAT2X
#num ABS_HAT2Y
#num ABS_HAT3X
#num ABS_HAT3Y
#num ABS_PRESSURE
#num ABS_DISTANCE
#num ABS_TILT_X
#num ABS_TILT_Y
#num ABS_TOOL_WIDTH
#num ABS_VOLUME
#num ABS_MISC
#num ABS_MT_SLOT
#num ABS_MT_TOUCH_MAJOR
#num ABS_MT_TOUCH_MINOR
#num ABS_MT_WIDTH_MAJOR
#num ABS_MT_WIDTH_MINOR
#num ABS_MT_ORIENTATION
#num ABS_MT_POSITION_X
#num ABS_MT_POSITION_Y
#num ABS_MT_TOOL_TYPE
#num ABS_MT_BLOB_ID
#num ABS_MT_TRACKING_ID
#num ABS_MT_PRESSURE
#num ABS_MT_DISTANCE
#num ABS_MT_TOOL_X
#num ABS_MT_TOOL_Y
#num ABS_MAX
#num ABS_CNT
#num SW_LID
#num SW_TABLET_MODE
#num SW_HEADPHONE_INSERT
#num SW_RFKILL_ALL
#num SW_MICROPHONE_INSERT
#num SW_DOCK
#num SW_LINEOUT_INSERT
#num SW_JACK_PHYSICAL_INSERT
#num SW_VIDEOOUT_INSERT
#num SW_CAMERA_LENS_COVER
#num SW_KEYPAD_SLIDE
#num SW_FRONT_PROXIMITY
#num SW_ROTATE_LOCK
#num SW_LINEIN_INSERT
#num SW_MUTE_DEVICE
#num SW_PEN_INSERTED
#num SW_MAX
#num SW_CNT
#num MSC_SERIAL
#num MSC_PULSELED
#num MSC_GESTURE
#num MSC_RAW
#num MSC_SCAN
#num MSC_TIMESTAMP
#num MSC_MAX
#num MSC_CNT
#num LED_NUML
#num LED_CAPSL
#num LED_SCROLLL
#num LED_COMPOSE
#num LED_KANA
#num LED_SLEEP
#num LED_SUSPEND
#num LED_MUTE
#num LED_MISC
#num LED_MAIL
#num LED_CHARGING
#num LED_MAX
#num LED_CNT
#num REP_DELAY
#num REP_PERIOD
#num REP_MAX
#num REP_CNT
#num SND_CLICK
#num SND_BELL
#num SND_TONE
#num SND_MAX
#num SND_CNT
