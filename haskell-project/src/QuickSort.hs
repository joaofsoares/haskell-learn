module QuickSort (sort) where

sort :: Ord a => [a] -> [a]
sort [] = []
sort (x : xs) =
  let smallerOrEqual = [a | a <- xs, a <= x]
      larger = [a | a <- xs, a > x]
   in sort smallerOrEqual ++ [x] ++ sort larger
