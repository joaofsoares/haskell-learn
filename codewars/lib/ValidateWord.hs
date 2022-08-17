module ValidateWord where

import Data.Char
import Data.List

validateWord :: String -> Bool
validateWord = checkLength . group . sort . map toLower
  where
    checkLength [] = True
    checkLength (x : xs) = all (\y -> length y == length x) xs
