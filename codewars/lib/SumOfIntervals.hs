module SumOfIntervals where

import Data.List

isOverlap :: (Int, Int) -> (Int, Int) -> Bool
isOverlap (a, b) (x, y) = max a x <= min b y

getRange :: [(Int, Int)] -> (Int, Int) -> [(Int, Int)]
getRange orig x = if not (null xs) then acc else orig ++ [x]
  where
    xs = filter (isOverlap x) orig
    ys = xs ++ [x]
    acc = (minimum $ map fst ys, maximum $ map snd ys) : filter (not . flip elem xs) orig

sumOfIntervals :: [(Int, Int)] -> Int
sumOfIntervals = sum . map (abs . uncurry (-)) . foldl getRange []
