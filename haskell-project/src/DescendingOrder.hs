module DescendingOrder where

import Data.List (sort)

convertCharToString :: Char -> [Char]
convertCharToString x = [x]

convertNumToList :: Integer -> [String]
convertNumToList num = map convertCharToString (show num)

concatString :: [String] -> String
concatString = foldr (++) ""

sortDesc :: Ord a => [a] -> [a]
sortDesc [] = []
sortDesc (x:xs) = let bigger  = filter (<= x) xs
                      smaller = filter (> x) xs
                  in sortDesc smaller ++ [x] ++ sortDesc bigger

convertToNum :: String -> Integer
convertToNum x = read x :: Integer

descendingOrder :: Integer -> Integer
descendingOrder = convertToNum . concatString . sortDesc . convertNumToList

descendingOrder' :: Integer -> Integer
descendingOrder' = read . reverse . sort . show

