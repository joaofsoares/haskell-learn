module Isograms where

import Data.Char (toLower)
import Data.List

toTup :: String -> (String, Int)
toTup x = ([head x], length x)

groupTup :: String -> [(String, Int)]
groupTup x = map toTup (groupBy (==) x)

check :: [(String, Int)] -> Bool
check tups = all (\tup -> snd tup == 1) tups

toLowerCase :: String -> String
toLowerCase = map toLower

isIsogram :: String -> Bool
isIsogram = check . groupTup . sort . toLowerCase

isIsogram' :: String -> Bool
isIsogram' str = null $ map toLower str \\ ['a'..'z']

