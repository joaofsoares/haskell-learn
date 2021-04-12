module App.TryLookup (findNum) where

import Data.Maybe (fromMaybe)

nums :: [([Char], Integer)]
nums = [("one", 1), ("two", 2)]

findNum :: [Char] -> Integer
findNum s =
  let value = lookup s nums
   in Data.Maybe.fromMaybe 0 value
