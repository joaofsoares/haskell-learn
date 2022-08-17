module DontGiveMeFive where

dontGiveMeFive :: Int -> Int -> Int
dontGiveMeFive start end = length $ filter (\n -> '5' `notElem` show n) [start .. end]
