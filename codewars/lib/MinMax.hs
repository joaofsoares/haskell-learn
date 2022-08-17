module MinMax where

minMax :: (Ord a) => [a] -> (a, a)
minMax xs = (minimum xs, maximum xs)
