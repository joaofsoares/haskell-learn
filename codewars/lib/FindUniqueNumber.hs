module FindUniqueNumber where

import Data.List

getUnique :: [Int] -> Int
getUnique = head . concat . filter (\x -> length x == 1) . group . sort
