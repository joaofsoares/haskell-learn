module MessageValidator where

import Data.Char (digitToInt, isDigit)

convertStrToInt :: String -> Int
convertStrToInt [] = 0
convertStrToInt [x] = digitToInt x
convertStrToInt (x : xs) = read (x : xs) :: Int

getNumber :: String -> Int
getNumber = convertStrToInt . takeWhile isDigit

getString :: String -> String
getString = takeWhile (not . isDigit) . dropWhile isDigit

checkMessage :: String -> Bool
checkMessage [] = True
checkMessage s =
  let num = getNumber s
      str = getString s
   in ((length str == num) && checkMessage (drop (length (show num) + length str) s))

isAValidMessage :: [Char] -> Bool
isAValidMessage = checkMessage
