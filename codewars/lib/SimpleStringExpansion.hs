module SimpleStringExpansion where

import Data.Char

solve :: String -> String
solve [] = []
solve [x]
  | x == ')' = ""
  | otherwise = [x]
solve (x : xs)
  | isDigit x = concat (replicate (digitToInt x) (solve xs))
  | x == '(' = solve xs
  | x == ')' = solve xs
  | otherwise = x : solve xs
