module NextBiggestNumber where

import Data.List

findPivot :: String -> String -> String -> String -> (String, String, String)
findPivot [] preffix pivot suffix = (reverse preffix, pivot, suffix)
findPivot [x] preffix pivot suffix = findPivot [] preffix pivot (x : suffix)
findPivot (x : y : xs) preffix pivot suffix
  | x > y = findPivot [] xs [y] (x : suffix)
  | otherwise = findPivot (y : xs) preffix pivot (x : suffix)

createSuffix :: String -> String -> String
createSuffix pivot suffix = subs ++ sort rest
  where
    subs = [minimum (filter (\y -> [y] > pivot) suffix)]
    rest = pivot ++ delete (head subs) suffix

swapElement :: (String, String, String) -> String
swapElement (preffix, pivot, suffix) = preffix ++ createSuffix pivot suffix

nextBigger :: Int -> Int
nextBigger n = if res > n then res else -1
  where
    res = read $ swapElement $ findPivot (reverse (show n)) [] [] []
