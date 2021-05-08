module ShorterConcat where

reverseLonger :: String -> String -> String
reverseLonger a b 
  | length a < length b = a ++ reverse b ++ a
  | otherwise           = b ++ reverse a ++ b

