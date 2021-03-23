module App.HasPath (hasPath) where

-- check if there is any sequence on tuples
-- like (1,2), (2,3), (3,4) = true

hasPath :: Eq b => [(b, b)] -> b -> b -> Bool
hasPath [] x y = x == y
hasPath xs x y
  | x == y = True
  | otherwise =
    let xs' = [(n, m) | (n, m) <- xs, n /= x] in or [hasPath xs' m y | (n, m) <- xs, n == x]
