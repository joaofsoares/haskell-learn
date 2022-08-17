module Palindrome3 where

getElements :: String -> String -> [String]
getElements [] _ = []
getElements (x : xs) as = filter isValidPalindrome $ a : getElements xs a
  where
    isValidPalindrome str = length str > 1 && str == reverse str
    a = as ++ [x]

findPalindrome :: String -> [String]
findPalindrome [] = []
findPalindrome (x : xs) = getElements (x : xs) [] ++ findPalindrome xs

palindrome :: Int -> Maybe Int
palindrome n
  | n < 0 = Nothing
  | otherwise = Just $ (length . findPalindrome . show) n
