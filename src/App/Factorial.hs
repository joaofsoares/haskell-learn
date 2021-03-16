module App.Factorial
  ( factorial,
    factorial2,
    factorial3,
    factorialRecursive,
  )
where

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

factorial2 :: Int -> Int
factorial2 n = go n 1
  where
    go n res
      | n > 1 = go (n - 1) (res * n)
      | otherwise = res

factorial3 :: Int -> Int
factorial3 n
  | n <= 1 = 1
  | otherwise = n * factorial3 (n - 1)

factorialRecursive :: Int -> Int
factorialRecursive n = aux n 1
  where
    aux n acc
      | n <= 1 = acc
      | otherwise = aux (n - 1) (n * acc)
