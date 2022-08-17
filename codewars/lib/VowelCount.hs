module VowelCount where

getCount :: String -> Int
getCount = length . filter (\x -> x `elem` ['a', 'e', 'i', 'o', 'u'])
