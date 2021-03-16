module App.FindFirstNonRepeatedElement (getFirstNonRepeatedElement) where

import Data.List (group)

groupElement :: Eq a => [a] -> [[a]]
groupElement = group

convertToTuples :: [a] -> (a, Int)
convertToTuples x = (head x, length x)

filterTuple :: [(a, Int)] -> [(a, Int)]
filterTuple = filter (\t -> snd t == 1)

getElement :: [(a, b)] -> [a]
getElement tups = [fst $ head tups]

getFirstNonRepeatedElement :: Eq a => [a] -> [a]
getFirstNonRepeatedElement x = do
  let grouped = groupElement x
  let tups = map convertToTuples grouped
  let filtered = filterTuple tups
  getElement filtered
