module SumOfParts where

aux :: Integer -> [Integer] -> [Integer]
aux init [] = [0]
aux init (x : xs) = init : aux (init - x) xs

partsSum :: [Integer] -> [Integer]
partsSum xs = aux (sum xs) xs
