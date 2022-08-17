module Palindrome1Half where

findNextPalindrome :: Int -> Int -> [Int]
findNextPalindrome x y = take y (filter isValidPalindrome [x ..])
  where
    isValidPalindrome s = let str = show s in length str > 1 && str == reverse str

palindrome :: Int -> Int -> Maybe [Int]
palindrome x y
  | x < 0 || y < 0 = Nothing
  | otherwise = Just (findNextPalindrome x y)
