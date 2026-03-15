module ReverseString (reverseString) where

reverseString :: String -> String 
reverseString s = [s !! i | i <- [len-1, len-2..0]]
  where len = length s

-- reverseString [] = []
-- reverseString (x:xs) = reverseString xs ++ [x]

