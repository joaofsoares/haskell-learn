module DigitalRoot where

import Data.Char

digitalRoot :: Integral a => a -> a
digitalRoot n
  | length num == 1 = n
  | otherwise = digitalRoot ((fromIntegral . sum . map digitToInt) num)
  where
    num = (show . toInteger) n
