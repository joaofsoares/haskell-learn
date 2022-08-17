module WhereIsMyParent where

import Data.Char
import Data.List

capitalize :: String -> String
capitalize [] = []
capitalize (x : xs) = toUpper x : xs

findChildren :: String -> String
findChildren = concatMap capitalize . group . sort . map toLower
