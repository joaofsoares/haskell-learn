module DetectPangram where

import Data.Char (isLetter, toLower)
import Data.List (sort)

isPangram :: String -> Bool
isPangram str = aux s [] == ['a' .. 'z']
  where
    s = sort . map toLower $ filter isLetter str
    aux [] seq = reverse seq
    aux (x : xs) seq
      | x `notElem` seq = aux xs (x : seq)
      | otherwise = aux xs seq

-- third part solution

isPangram' :: String -> Bool
isPangram' str = all (`elem` map toLower str) ['a' .. 'z']
