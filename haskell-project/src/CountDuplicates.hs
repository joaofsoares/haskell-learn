module CountDuplicates where

import Data.Char
import Data.List

convertToLower :: String -> String
convertToLower s = map toLower s

checkDuplicate :: String -> Int
checkDuplicate [] = 0
checkDuplicate (x:xs)
  | x `elem` xs = 1 + checkDuplicate (filter (/= x) xs)
  | otherwise   = 0 + checkDuplicate xs

duplicateCount :: String -> Int
duplicateCount = checkDuplicate . convertToLower

-- thrid part solution
duplicateCount' :: String -> Int
duplicateCount' = length . filter ((>1) . length) . group . sort . map toLower

