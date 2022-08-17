module FlattenSortArray where

import Data.List (sort)

flatSort :: [[Int]] -> [Int]
flatSort = sort . concat
