module RomanNumberEncoder where

encoder :: String -> Integer -> String
encoder acc n
  | n >= 1000 = encoder (acc ++ "M") (n - 1000)
  | n >= 900 = encoder (acc ++ "CM") (n - 900)
  | n >= 500 = encoder (acc ++ "D") (n - 500)
  | n >= 400 = encoder (acc ++ "CD") (n - 400)
  | n >= 100 = encoder (acc ++ "C") (n - 100)
  | n >= 90 = encoder (acc ++ "XC") (n - 90)
  | n >= 50 = encoder (acc ++ "L") (n - 50)
  | n >= 40 = encoder (acc ++ "XL") (n - 40)
  | n >= 10 = encoder (acc ++ "X") (n - 10)
  | n == 9 = encoder (acc ++ "IX") (n - 9)
  | n >= 5 = encoder (acc ++ "V") (n - 5)
  | n == 4 = encoder (acc ++ "IV") (n - 4)
  | n >= 1 = encoder (acc ++ "I") (n - 1)
  | otherwise = acc

solution :: Integer -> String
solution = encoder ""
