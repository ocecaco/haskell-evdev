#include <bindings.dsl.h>
#include <libevdev/libevdev.h>
#include <errno.h>

module Bindings.Evdev where
import Foreign.Ptr
#strict_import

#num EAGAIN

#opaque_t struct libevdev

#integral_t enum libevdev_read_flag
#num LIBEVDEV_READ_FLAG_SYNC
#num LIBEVDEV_READ_FLAG_NORMAL
#num LIBEVDEV_READ_FLAG_FORCE_SYNC
#num LIBEVDEV_READ_FLAG_BLOCKING

#ccall libevdev_new , IO (Ptr <struct libevdev>)
#ccall libevdev_new_from_fd , CInt -> Ptr (Ptr <struct libevdev>) -> IO CInt
#ccall libevdev_free , Ptr <struct libevdev> -> IO ()

#integral_t enum libevdev_grab_mode
#num LIBEVDEV_GRAB
#num LIBEVDEV_UNGRAB

#ccall libevdev_grab , Ptr <struct libevdev> -> <enum libevdev_grab_mode> -> IO CInt
#ccall libevdev_set_fd , Ptr <struct libevdev> -> CInt -> IO CInt
#ccall libevdev_change_fd , Ptr <struct libevdev> -> CInt -> IO CInt
#ccall libevdev_get_fd , Ptr <struct libevdev> -> IO CInt

#integral_t enum libevdev_read_status
#num LIBEVDEV_READ_STATUS_SUCCESS
#num LIBEVDEV_READ_STATUS_SYNC

#integral_t time_t
#integral_t suseconds_t

#starttype struct timeval
#field tv_sec , <time_t>
#field tv_usec , <suseconds_t>
#stoptype

#starttype struct input_event
#field time , <timeval>
#field type , Word16
#field code , Word16
#field value , Int32
#stoptype

#ccall libevdev_next_event , Ptr <struct libevdev> -> CUInt -> Ptr <struct input_event> -> IO CInt
#ccall libevdev_has_event_pending , Ptr <struct libevdev> -> IO CInt

#starttype struct input_absinfo
#field value , Int32
#field minimum , Int32
#field maximum , Int32
#field fuzz , Int32
#field flat , Int32
#field resolution , Int32
#stoptype

#ccall libevdev_get_name , Ptr <struct libevdev> -> IO CString
#ccall libevdev_set_name , Ptr <struct libevdev> -> CString -> IO ()
#ccall libevdev_get_phys , Ptr <struct libevdev> -> IO CString
#ccall libevdev_set_phys , Ptr <struct libevdev> -> CString -> IO ()
#ccall libevdev_get_uniq , Ptr <struct libevdev> -> IO CString
#ccall libevdev_set_uniq , Ptr <struct libevdev> -> CString -> IO ()
#ccall libevdev_get_id_product , Ptr <struct libevdev> -> IO CInt
#ccall libevdev_set_id_product , Ptr <struct libevdev> -> CInt -> IO ()
#ccall libevdev_get_id_vendor , Ptr <struct libevdev> -> IO CInt
#ccall libevdev_set_id_vendor , Ptr <struct libevdev> -> CInt -> IO ()
#ccall libevdev_get_id_bustype , Ptr <struct libevdev> -> IO CInt
#ccall libevdev_set_id_bustype , Ptr <struct libevdev> -> CInt -> IO ()
#ccall libevdev_get_id_version , Ptr <struct libevdev> -> IO CInt
#ccall libevdev_set_id_version , Ptr <struct libevdev> -> CInt -> IO ()
#ccall libevdev_get_driver_version , Ptr <struct libevdev> -> IO CInt
#ccall libevdev_has_property , Ptr <struct libevdev> -> CUInt -> IO CInt
#ccall libevdev_enable_property , Ptr <struct libevdev> -> CUInt -> IO CInt
#ccall libevdev_has_event_type , Ptr <struct libevdev> -> CUInt -> IO CInt
#ccall libevdev_has_event_code , Ptr <struct libevdev> -> CUInt -> CUInt -> IO CInt
#ccall libevdev_get_abs_minimum , Ptr <struct libevdev> -> CUInt -> IO CInt
#ccall libevdev_get_abs_maximum , Ptr <struct libevdev> -> CUInt -> IO CInt
#ccall libevdev_get_abs_fuzz , Ptr <struct libevdev> -> CUInt -> IO CInt
#ccall libevdev_get_abs_flat , Ptr <struct libevdev> -> CUInt -> IO CInt
#ccall libevdev_get_abs_resolution , Ptr <struct libevdev> -> CUInt -> IO CInt
#ccall libevdev_get_abs_info , Ptr <struct libevdev> -> CUInt -> IO (Ptr <struct input_absinfo>)
#ccall libevdev_get_event_value , Ptr <struct libevdev> -> CUInt -> CUInt -> IO CInt
#ccall libevdev_set_event_value , Ptr <struct libevdev> -> CUInt -> CUInt -> CInt -> IO CInt
#ccall libevdev_fetch_event_value , Ptr <struct libevdev> -> CUInt -> CUInt -> Ptr CInt -> IO CInt
#ccall libevdev_get_slot_value , Ptr <struct libevdev> -> CUInt -> CUInt -> IO CInt
#ccall libevdev_set_slot_value , Ptr <struct libevdev> -> CUInt -> CUInt -> CInt -> IO CInt
#ccall libevdev_fetch_slot_value , Ptr <struct libevdev> -> CUInt -> CUInt -> Ptr CInt -> IO CInt
#ccall libevdev_get_num_slots , Ptr <struct libevdev> -> IO CInt
#ccall libevdev_get_current_slot , Ptr <struct libevdev> -> IO CInt
#ccall libevdev_set_abs_minimum , Ptr <struct libevdev> -> CUInt -> CInt -> IO ()
#ccall libevdev_set_abs_maximum , Ptr <struct libevdev> -> CUInt -> CInt -> IO ()
#ccall libevdev_set_abs_fuzz , Ptr <struct libevdev> -> CUInt -> CInt -> IO ()
#ccall libevdev_set_abs_flat , Ptr <struct libevdev> -> CUInt -> CInt -> IO ()
#ccall libevdev_set_abs_resolution , Ptr <struct libevdev> -> CUInt -> CInt -> IO ()
#ccall libevdev_set_abs_info , Ptr <struct libevdev> -> CUInt -> Ptr <struct input_absinfo> -> IO ()
#ccall libevdev_enable_event_type , Ptr <struct libevdev> -> CUInt -> IO CInt
#ccall libevdev_disable_event_type , Ptr <struct libevdev> -> CUInt -> IO CInt
#ccall libevdev_enable_event_code , Ptr <struct libevdev> -> CUInt -> CUInt -> Ptr () -> IO CInt
#ccall libevdev_disable_event_code , Ptr <struct libevdev> -> CUInt -> CUInt -> IO CInt
#ccall libevdev_kernel_set_abs_info , Ptr <struct libevdev> -> CUInt -> Ptr <struct input_absinfo> -> IO CInt

#integral_t enum libevdev_led_value
#num LIBEVDEV_LED_ON
#num LIBEVDEV_LED_OFF

#ccall libevdev_kernel_set_led_value , Ptr <struct libevdev> -> CUInt -> <enum libevdev_led_value> -> IO CInt
#ccall libevdev_kernel_set_led_values , Ptr <struct libevdev> -> IO CInt
#ccall libevdev_set_clock_id , Ptr <struct libevdev> -> CInt -> IO CInt
#ccall libevdev_event_is_type , Ptr <struct input_event> -> CUInt -> IO CInt
#ccall libevdev_event_is_code , Ptr <struct input_event> -> CUInt -> CUInt -> IO CInt
#ccall libevdev_event_type_get_name , CUInt -> IO CString
#ccall libevdev_event_code_get_name , CUInt -> CUInt -> IO CString
#ccall libevdev_property_get_name , CUInt -> IO CString
#ccall libevdev_event_type_get_max , CUInt -> IO CInt
#ccall libevdev_event_type_from_name , CString -> IO CInt
#ccall libevdev_event_type_from_name_n , CString -> CSize -> IO CInt
#ccall libevdev_event_code_from_name , CUInt -> CString -> IO CInt
#ccall libevdev_event_code_from_name_n , CUInt -> CString -> CSize -> IO CInt
#ccall libevdev_property_from_name , CString -> IO CInt
#ccall libevdev_property_from_name_n , CString -> CSize -> IO CInt
#ccall libevdev_get_repeat , Ptr <struct libevdev> -> Ptr CInt -> Ptr CInt -> IO CInt
