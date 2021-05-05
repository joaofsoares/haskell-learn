module Speller (speller) where

getSpell :: [Char] -> [Char]
getSpell cs = [head cs] ++ " is for " ++ cs

getSpelledStrings :: [[Char]] -> [[Char]]
getSpelledStrings (x:[]) = ("and " ++ getSpell x ) : []
getSpelledStrings (x:xs) = (getSpell x ++ ", ") : getSpelledStrings xs

convertListToString :: [[Char]] -> [Char]
convertListToString = foldr (++) []

speller :: [[Char]] -> [Char]
speller [] = ""
speller [x] = getSpell x
speller xs = (convertListToString . getSpelledStrings) xs

