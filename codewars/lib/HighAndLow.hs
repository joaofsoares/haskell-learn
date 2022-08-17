module HighAndLow where

import Data.List (sort)
import Data.List.Split (splitOn)

convert :: String -> [Int]
convert s = map (\x -> read x :: Int) (splitOn " " s)

highAndLow :: String -> String
highAndLow input =
  let numbers = convert input
   in show (maximum numbers) ++ " " ++ show (minimum numbers)
