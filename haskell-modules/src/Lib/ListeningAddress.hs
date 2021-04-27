module Lib.ListeningAddress (ListeningAddress (..)) where

import Data.Word
import Lib.Port

data ListeningAddress = ListeningAddress Word8 Word8 Word8 Word8 Port deriving (Show)
