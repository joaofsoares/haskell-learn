module VowelIndices where

import Data.Char (toLower)

vowelIndices :: String -> [Integer]
vowelIndices word = helper (map toLower word) 0 []
  where
    helper [] _ r = reverse r
    helper (x : xs) i r
      | x `elem` ['a', 'e', 'i', 'o', 'u', 'y'] = helper xs (i + 1) ((i + 1) : r)
      | otherwise = helper xs (i + 1) r
