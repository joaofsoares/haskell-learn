module Dec2Fact where

import Data.Char

mapIntLetter :: [(Integer, Char)]
mapIntLetter = zip [10 .. 35] ['A' .. 'Z']

dec2Fact :: Integer -> Integer -> String
dec2Fact 0 _ = []
dec2Fact v n = mapLetter (mod v n) : dec2Fact (div v n) (n + 1)

fact2Dec :: String -> Integer -> Integer
fact2Dec [] _ = 0
fact2Dec _ 0 = 0
fact2Dec (x : xs) n = mapDigit x * product [1 .. n] + fact2Dec xs (n - 1)

mapLetter :: Integer -> Char
mapLetter n
  | n > 9 = snd (head (filter (\(a, _) -> a == n) mapIntLetter))
  | otherwise = intToDigit (fromInteger n)

mapDigit :: Char -> Integer
mapDigit c
  | isDigit c = (toInteger . digitToInt) c
  | otherwise = fst (head (filter (\(_, b) -> b == c) mapIntLetter))

dec2FactString :: Integer -> String
dec2FactString n = reverse $ dec2Fact n 1

factString2Dec :: String -> Integer
factString2Dec str = fact2Dec str (toInteger size)
  where
    size = length str - 1
