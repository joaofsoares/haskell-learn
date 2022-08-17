module Palindrome1 where

palindrome :: Integer -> Maybe Bool
palindrome n = if n < 0 then Nothing else Just isPalindrome
  where
    isPalindrome = let str = show n in str == reverse str
