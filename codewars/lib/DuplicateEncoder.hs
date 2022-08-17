module DuplicateEncoder where

import Data.Char (toLower)
import Data.List (group, sort)

findDuplicate :: Ord b => [b] -> [b]
findDuplicate s = map head $ filter (\x -> length x > 1) (group $ sort s)

duplicateEncode :: String -> String
duplicateEncode s = map (\x -> if x `elem` duplicates then ')' else '(') lowerStr
  where
    lowerStr = map toLower s
    duplicates = findDuplicate lowerStr

-- third part solution

duplicateEncode' :: String -> String
duplicateEncode' xs = map encode xs'
  where
    xs' = map toLower xs
    encode c = if length (filter (== c) xs') > 1 then ')' else '('
