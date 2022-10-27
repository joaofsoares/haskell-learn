module WhereIsMyAnagram where

import Data.List (sort)

anagrams :: String -> [String] -> [String]
anagrams word = filter (\s -> sortedWord == sort s)
  where
    sortedWord = sort word
