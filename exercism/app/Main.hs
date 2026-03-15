module Main (main) where

import qualified LeapYear (isLeapYear)
import qualified ReverseString (reverseString)

printLeapYear :: Bool -> String
printLeapYear True = "True"
printLeapYear False = "False"

main :: IO ()
main = do
  putStrLn ("is leap year: " ++ (printLeapYear(LeapYear.isLeapYear 2026)))
  putStrLn ("Reverse String: " ++ (ReverseString.reverseString "hello"))

