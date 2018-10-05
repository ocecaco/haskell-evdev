#include <bindings.dsl.h>
#include <libevdev/libevdev-uinput.h>

module Bindings.Evdev.Uinput where
import Foreign.Ptr
import Bindings.Evdev
#strict_import

#opaque_t struct libevdev_uinput

#integral_t enum libevdev_uinput_open_mode
#num LIBEVDEV_UINPUT_OPEN_MANAGED

#ccall libevdev_uinput_create_from_device , Ptr <struct libevdev> -> CInt -> Ptr (Ptr <struct libevdev_uinput>) -> IO CInt
#ccall libevdev_uinput_destroy , Ptr <struct libevdev_uinput> -> IO ()
#ccall libevdev_uinput_get_fd , Ptr <struct libevdev_uinput> -> IO CInt
#ccall libevdev_uinput_get_syspath , Ptr <struct libevdev_uinput> -> IO CString
#ccall libevdev_uinput_get_devnode , Ptr <struct libevdev_uinput> -> IO CString
#ccall libevdev_uinput_write_event , Ptr <struct libevdev_uinput> -> CUInt -> CUInt -> CInt -> IO CInt
