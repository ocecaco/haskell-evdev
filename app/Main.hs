module Main where

import Lib
import Foreign.Ptr
import Foreign.Marshal.Alloc
import Foreign.Storable
import Bindings.Evdev
import Bindings.Evdev.EventCodes
import Control.Concurrent
import System.Posix.IO
import Control.Monad

main :: IO ()
main = someFunc
