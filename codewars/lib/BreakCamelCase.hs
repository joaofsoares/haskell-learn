module BreakCamelCase where

import Data.Char (isUpper)

breakHelper :: String -> String -> String
breakHelper [] r = r
breakHelper (x : xs) r =
  if isUpper x
    then breakHelper xs (x : ' ' : r)
    else breakHelper xs (x : r)

breakClean :: String -> String
breakClean [] = []
breakClean [x] = [x]
breakClean (x : xs) = if x == ' ' then xs else x : xs

break :: String -> String
break x = breakClean . reverse $ breakHelper x []

-- third part solution

break' :: String -> String
break' [] = []
break' [x] = [x]
break' (x : xs) = x : c ++ break' xs
  where
    c = if isUpper (head xs) then " " else ""
