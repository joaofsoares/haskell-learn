module CountingDuplicates where

import Data.Char

convertToLower :: String -> String
convertToLower = map toLower

checkDuplicate :: String -> Int
checkDuplicate [] = 0
checkDuplicate (x : xs)
  | x `elem` xs = 1 + checkDuplicate (filter (/= x) xs)
  | otherwise = 0 + checkDuplicate xs

duplicateCount :: String -> Int
duplicateCount = checkDuplicate . convertToLower
