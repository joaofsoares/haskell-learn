module IsNumberPrime where

isPrime :: Integer -> Bool
isPrime n = (n > 1) && null [x | x <- [2 .. (floor . sqrt . fromIntegral) n], n `mod` x == 0]
