module PythagoreanTriple
  ( findPythagoreanTriple,
    findPythagoreanTriple',
  )
where

import Control.Monad (guard)

findPythagoreanTriple :: (Num c, Eq c, Enum c) => c -> [(c, c, c)]
findPythagoreanTriple x =
  [(a, b, c) | c <- [1 .. x], a <- [1 .. c], b <- [1 .. a], a ^ 2 + b ^ 2 == c ^ 2]

findPythagoreanTriple' :: (Num c, Enum c, Eq c) => c -> [(c, c, c)]
findPythagoreanTriple' n = do
  x <- [1 .. n]
  y <- [x .. n]
  z <- [y .. n]
  guard (x * x + y * y == z * z)
  return (x, y, z)
