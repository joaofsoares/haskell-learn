module NthFibonacci where

fib :: Int -> Integer
fib n = fibHelper !! (n - 1)
  where
    fibHelper = 0 : 1 : zipWith (+) fibHelper (tail fibHelper)
