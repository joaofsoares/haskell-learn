module App.Factorial
  ( factorial,
    factorial2,
    factorial3,
    factorial4,
    factorialRecursive,
  )
where

factorial :: (Eq p, Num p) => p -> p
factorial 0 = 1
factorial n = n * factorial (n - 1)

factorial2 :: (Ord p, Num p) => p -> p
factorial2 n = go n 1
  where
    go n res
      | n > 1 = go (n - 1) (res * n)
      | otherwise = res

factorial3 :: (Ord p, Num p) => p -> p
factorial3 n
  | n <= 1 = 1
  | otherwise = n * factorial3 (n - 1)

factorial4 :: (Num a, Enum a) => a -> a
factorial4 n = product [1 .. n]

factorialRecursive :: (Ord t, Num t) => t -> t
factorialRecursive n = aux n 1
  where
    aux n acc
      | n <= 1 = acc
      | otherwise = aux (n - 1) (n * acc)
