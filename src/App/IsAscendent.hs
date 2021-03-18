module App.IsAscendent (isAsc) where

isAsc :: Ord a => [a] -> Bool
isAsc [] = True
isAsc [x] = True
isAsc (x : y : xs) =
  (x <= y) && isAsc (y : xs)
