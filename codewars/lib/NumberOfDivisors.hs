module NumberOfDivisors where

import Data.List
import Data.Maybe
import Data.Numbers.Primes

getPrimeFactor :: [Int]
getPrimeFactor =
  mapMaybe (\n -> find ((n ==) . succ . length . properDivisors) [1 ..]) [1 ..]

properDivisors :: Int -> [Int]
properDivisors =
  init
    . sort
    . foldr (flip ((<*>) . fmap (*)) . scanl (*) 1) [1]
    . group
    . primeFactors

findSmallestNumber :: Int -> Int
findSmallestNumber n = getPrimeFactor !! (n - 1)
