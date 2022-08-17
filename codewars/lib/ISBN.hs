module ISBN where

import Data.Char

split :: String -> (String, String)
split [] = ([], [])
split (x : xs) =
  let (evens, odds) = split xs
   in (x : odds, evens)

calcDigit :: String -> String
calcDigit s =
  let (odds, evens) = split s
      sumNum = sum (map digitToInt odds ++ map (\x -> digitToInt x * 3) evens)
      modDigit = sumNum `mod` 10
      digit = if modDigit == 0 then 0 else 10 - modDigit
   in show digit

toISBN13 :: String -> String
toISBN13 s = "978-" ++ code ++ digit
  where
    code = init s
    digit = (calcDigit . filter isDigit . ("978" ++)) code
