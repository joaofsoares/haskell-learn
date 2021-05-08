module VowelCount where

getCount :: String -> Int
getCount = length . filter (`elem` "aeiou")

