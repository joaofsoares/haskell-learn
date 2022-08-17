module MultiplesOf3And5 where

find :: Integer -> Integer
find 0 = 0
find n = sum $ filter (\x -> isDivBy3 x || isDivBy5 x) [1 .. (n -1)]
  where
    isDivBy3 n = mod n 3 == 0
    isDivBy5 n = mod n 5 == 0
