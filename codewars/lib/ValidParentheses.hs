module ValidParentheses where

validator :: String -> Int -> Bool
validator [] n = n == 0
validator (x : xs) n
  | n < 0 = False
  | x == '(' = validator xs (n + 1)
  | otherwise = validator xs (n - 1)

valid :: String -> Bool
valid s = validator s 0
