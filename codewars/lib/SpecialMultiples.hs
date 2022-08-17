module SpecialMultiples where

primes :: [Integer]
primes = sieve [2 ..]
  where
    sieve [] = []
    sieve (p : xs) = p : sieve [x | x <- xs, x `mod` p > 0]

countSpecMult :: Int -> Integer -> Integer
countSpecMult n maxval = div maxval . product $ take n primes
