module PersistentBugger where

import Data.Char

persistHelper :: Int -> Int -> Int
persistHelper num count
  | length (show num) == 1 = count
  | otherwise = persistHelper (product' num) (count + 1)
  where
    product' = product . map digitToInt . show

persistence :: Int -> Int
persistence num = persistHelper num 0
