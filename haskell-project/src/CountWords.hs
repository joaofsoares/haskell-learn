module CountWords (wordNums) where

import Data.List (group, sort)

wordNums :: String -> [(String, Int)]
wordNums = map (\ws -> (head ws, length ws)) . group . sort . words
