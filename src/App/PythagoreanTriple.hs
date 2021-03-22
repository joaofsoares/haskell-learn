module App.PythagoreanTriangles (findPythagoreanTriple) where

findPythagoreanTriple :: (Num c, Eq c, Enum c) => c -> [(c, c, c)]
findPythagoreanTriple x =
  [(a, b, c) | c <- [1 .. x], a <- [1 .. c], b <- [1 .. a], a ^ 2 + b ^ 2 == c ^ 2]
