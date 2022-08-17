module FindMissedNumber where

import Data.List

findNumber :: Int -> Int -> [Char] -> Maybe [Int]
findNumber init end str =
  let orig = (sort . concatMap show) [init .. end]
      input = sort str
      diff = orig \\ input
   in case diff of
        [] -> Nothing
        _ -> (Just . nub . filter (\x -> x > init && x <= end) . map (read :: String -> Int) . permutations) diff
