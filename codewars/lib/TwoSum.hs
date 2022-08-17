module TwoSum where

createPairs :: [b] -> [(b, b)]
createPairs [] = []
createPairs (x : xs) = pairElement x xs ++ createPairs xs
  where
    pairElement z zs = foldr (\y -> (++) [(z, y)]) [] zs

findSum :: [((Int, Int), (Int, Int))] -> Int -> ((Int, Int), (Int, Int))
findSum [] _ = error "element not found"
findSum (x : xs) y
  | snd (fst x) + snd (snd x) == y = x
  | otherwise = findSum xs y

twoSum :: [Int] -> Int -> (Int, Int)
twoSum xs y = (fst first, fst second)
  where
    (first, second) = findSum (createPairs (zip [0 .. length xs] xs)) y
