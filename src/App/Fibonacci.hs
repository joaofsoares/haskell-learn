module App.Fibonacci (fibonacci, fib, fibonacciRecursive) where

fibonacci :: Int -> Integer
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

fibs :: [Integer]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

fib :: Int -> Integer
fib n = fibs !! n

fibonacciRecursive :: Int -> Integer
fibonacciRecursive n = aux n 0 1
  where
    aux n prev next
      | n == 0 = prev
      | n == 1 = next
      | otherwise = aux (n - 1) next (prev + next)
