module BackspacesInString where

backspace :: String -> String -> String
backspace [] acc = acc
backspace (x : xs) acc
  | x == '#' && null acc = backspace xs acc
  | x == '#' = backspace xs (tail acc)
  | otherwise = backspace xs (x : acc)

cleanString :: String -> String
cleanString s = reverse $ backspace s []
