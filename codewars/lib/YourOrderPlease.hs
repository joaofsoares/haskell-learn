module YourOrderPlease where

import Data.Char (digitToInt, isDigit)
import Data.Function (on)
import Data.List (find, sortBy, sortOn)

getDigit :: String -> Int
getDigit s = digitToInt $ head (filter isDigit s)

mapWords :: String -> [(Int, String)]
mapWords s = sortBy (compare `on` fst) (map (\x -> (getDigit x, x)) (words s))

yourOrderPlease :: String -> String
yourOrderPlease [] = []
yourOrderPlease s = unwords $ map snd (mapWords s)

-- third part solution

yourOrderPlease' :: String -> String
yourOrderPlease' = unwords . sortOn (find isDigit) . words
