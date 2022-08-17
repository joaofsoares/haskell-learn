module HowManyNines where

import Data.Char

getNines :: Integer -> Integer
getNines num
  | num < 10 = if num == 9 then 1 else 0
  | otherwise = getHead num * getDecimalNines (numberLength - 1) + getRest num
  where
    numberLength = toInteger $ length $ show num

getDecimalNines :: Integer -> Integer
getDecimalNines n
  | n == 1 = 1
  | otherwise = 10 ^ (n - 1) + 9 * getDecimalNines (n - 1)

getHead :: Integer -> Integer
getHead num = toInteger $ digitToInt $ head $ show num

getTail :: Integer -> Integer
getTail num = read t :: Integer
  where
    t = tail $ show num

getRest :: Integer -> Integer
getRest num = if h == 9 then t + 1 else getNines t
  where
    h = getHead num
    t = getTail num

nines :: Integer -> Integer
nines = getNines
