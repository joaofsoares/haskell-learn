module CamelCaseWithSplit where

import Data.List.Split
import Data.Char

capitalize :: String -> String
capitalize []     = []
capitalize (x:xs) = toUpper x : xs

toCamelCase :: String -> String
toCamelCase str = concat $ head words : map capitalize (tail words)
  where words = splitOneOf "-_" str

