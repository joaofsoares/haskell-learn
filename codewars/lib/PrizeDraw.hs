module PrizeDraw where

import Data.Bifunctor (Bifunctor (second))
import Data.Char (toLower)
import Data.Function (on)
import Data.List (elemIndices, sortBy, sortOn)

split :: Char -> [Char] -> [[Char]]
split c s = words $ map (\x -> if x == c then ' ' else x) s

calcName :: [Char] -> Int
calcName name = calc name 0
  where
    calc [] acc = acc
    calc (c : cs) acc = calc cs (acc + getWeight c)

getWeight :: Char -> Int
getWeight c = (+ 1) . head $ elemIndices (toLower c) ['a' .. 'z']

calcSom :: [Char] -> Int -> Int
calcSom n w = (length n + calcName n) * w

calcWinners :: [([Char], Int)] -> [([Char], Int)]
calcWinners = sortOn fst . map (\(x, y) -> (x, calcSom x y))

sortTuple :: (Ord a, Ord b) => [(a, b)] -> [(a, b)]
sortTuple = sortBy (flip compare `on` snd)

getWinner :: Int -> [([Char], Int)] -> [Char]
getWinner n tups = fst (sortTuple tups !! n)

rank :: [Char] -> [Int] -> Int -> [Char]
rank [] _ _ = "No participants"
rank st we n
  | n > length names = "Not enough participants"
  | otherwise = getWinner (n - 1) $ calcWinners (zip names we)
  where
    names = split ',' st
