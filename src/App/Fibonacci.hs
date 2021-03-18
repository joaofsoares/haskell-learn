module App.Fibonacci (fibonacci, fib, fibonacciRecursive) where

fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

fibs :: [Int]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

fib :: Int -> Int
fib n = fibs !! n

fibonacciRecursive :: Int -> Int
fibonacciRecursive n = aux n 0 1
  where
    aux n prev next
      | n == 0 = prev
      | n == 1 = next
      | otherwise = aux (n - 1) next (prev + next)
