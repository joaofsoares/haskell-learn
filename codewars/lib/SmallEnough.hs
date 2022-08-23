module SmallEnough where

smallEnough :: [Int] -> Int -> Bool
smallEnough xs limit = all (<= limit) xs
