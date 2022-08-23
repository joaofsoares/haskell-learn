module MovingZeroToTheEnd where

import Data.List (sortOn)

move :: [Int] -> [Int] -> [Int] -> [Int]
move [] ys zs = reverse ys ++ zs
move (x : xs) ys zs
  | x == 0 = move xs ys (x : zs)
  | otherwise = move xs (x : ys) zs

moveZero :: [Int] -> [Int]
moveZero xs = move xs [] []

-- third part solution

moveZeros :: [Int] -> [Int]
moveZeros = sortOn (== 0)
