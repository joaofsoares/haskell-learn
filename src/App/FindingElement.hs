module App.FindingElement (find) where

find :: (Eq a) => a -> [a] -> Bool
find _ [] = False
find n (x : xs) = (n == x) || find n xs
