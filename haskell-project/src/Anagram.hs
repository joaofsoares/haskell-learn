module Anagram where

import Data.Char (toLower)
import Data.List (sort)

convertString :: String -> String
convertString = sort . map toLower

isAnagram :: String -> String -> Bool
isAnagram x y = convertString x == convertString y
