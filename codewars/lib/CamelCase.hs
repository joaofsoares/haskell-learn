module CamelCase where

import Data.Char (toLower, toUpper)

concatString :: [String] -> String
concatString = concat

capitalize :: String -> String
capitalize [] = []
capitalize (x : xs) = map toUpper [x] ++ map toLower xs

split :: String -> Char -> [String]
split [] delim = [""]
split (c : cs) delim
  | c == delim = "" : rest
  | otherwise = (c : head rest) : tail rest
  where
    rest = split cs delim

toCamelCaseHelper :: [String] -> [String]
toCamelCaseHelper [] = []
toCamelCaseHelper (x : xs) = x : map capitalize xs

toCamelCase :: String -> String
toCamelCase str
  | '-' `elem` str = concatString $ toCamelCaseHelper $ split str '-'
  | otherwise = concatString $ toCamelCaseHelper $ split str '_'
