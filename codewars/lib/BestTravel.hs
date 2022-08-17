module BestTravel where

combinations :: Int -> [a] -> [[a]]
combinations _ [] = []
combinations 0 _ = []
combinations 1 x = map (: []) x
combinations n (x : xs) = map (x :) (combinations (n - 1) xs) ++ combinations n xs

getTravel :: (Num a) => [[a]] -> [a]
getTravel [] = [0]
getTravel [[x]] = [x]
getTravel (x : xs) = sum x : getTravel xs

findBestTravel :: Int -> [Int] -> Int
findBestTravel t xs = maximum (filter (<= t) xs)

chooseBestSum :: Int -> Int -> [Int] -> Maybe Int
chooseBestSum t k ls
  | k > length ls || bestTravel == 0 = Nothing
  | otherwise = Just bestTravel
  where
    bestTravel = findBestTravel t $ getTravel $ combinations k ls
