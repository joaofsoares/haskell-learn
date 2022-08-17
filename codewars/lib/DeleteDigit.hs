module DeleteDigit where

import Data.List

toString :: Int -> String
toString = show

toInt :: String -> Int
toInt s = read s :: Int

createCandidates :: String -> Int -> [String] -> [String]
createCandidates [] _ res = res
createCandidates s n res
  | length s == (n - 1) = res
  | otherwise =
    let split = splitAt n s
        left = if null (fst split) then fst split else init (fst split)
        right = snd split
     in createCandidates s (n + 1) ((left ++ right) : res)

deleteDigit :: Int -> Int
deleteDigit s = maximum $ map toInt $ createCandidates (toString s) 1 []
