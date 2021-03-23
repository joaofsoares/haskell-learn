module App.Fibonacci (fibonacci, fib, fibonacciRecursive) where

fibonacci :: (Eq a, Num a, Num p) => a -> p
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

fibs :: [Int]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

fib :: Int -> Int
fib n = fibs !! n

fibonacciRecursive :: (Eq t1, Num t1, Num t2) => t1 -> t2
fibonacciRecursive n = aux n 0 1
  where
    aux n prev next
      | n == 0 = prev
      | n == 1 = next
      | otherwise = aux (n - 1) next (prev + next)
