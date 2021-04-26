module Prime (isPrime) where

isPrime :: Integral a => a -> Bool
isPrime 0 = False
isPrime 1 = False
isPrime 2 = True
isPrime n
  | not (null ([x | x <- [2 .. n -1], mod n x == 0])) = False
  | otherwise = True
