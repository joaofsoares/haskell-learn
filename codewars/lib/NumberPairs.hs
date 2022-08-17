module NumberPairs where

getLargerNumbers :: Ord a => [a] -> [a] -> [a]
getLargerNumbers = zipWith max
