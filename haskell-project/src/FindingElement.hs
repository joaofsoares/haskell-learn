module FindingElement (find) where

find :: Eq t => t -> [t] -> Bool
find _ [] = False
find n (x : xs) = (n == x) || find n xs
