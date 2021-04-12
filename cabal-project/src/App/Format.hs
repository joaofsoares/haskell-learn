module App.FormatList where

import Data.List (intercalate)

formatList :: Show a => String -> String -> String -> [a] -> String
formatList s e sep xs = s ++ intercalate sep (map show xs) ++ e

parenthesizeWords :: String -> String
parenthesizeWords s = unwords $ map parenthesizeWord (words s)
  where
    parenthesizeWord s = "(" ++ s ++ ")"

parenthesizeWords' :: String -> String
parenthesizeWords' s = unwords $ map (\s -> "(" ++ s ++ ")") (words s)
