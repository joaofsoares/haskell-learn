module HighScoreWord where

import Data.Char

getCharScore :: Char -> Int
getCharScore ch = snd (head (filter (\tup -> fst tup == ch) (zip ['a' .. 'z'] [1 .. 26])))

getWordScore :: String -> Int
getWordScore = sum . map getCharScore

createWordScore :: String -> (String, Int)
createWordScore str = (str, getWordScore str)

findHighScore :: [(String, Int)] -> String
findHighScore xs = fst (foldr (\x y -> if snd x >= snd y then x else y) ("", 1) xs)

score :: String -> String
score = findHighScore . map createWordScore . words . map toLower
