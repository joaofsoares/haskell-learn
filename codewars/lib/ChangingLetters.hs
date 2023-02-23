module ChangingLetters where

import Data.Char

checkVowel :: Char -> Char
checkVowel c
  | toLower c `elem` ['a', 'e', 'i', 'o', 'u'] = toUpper c
  | otherwise = c

swap :: String -> String
swap = map checkVowel
