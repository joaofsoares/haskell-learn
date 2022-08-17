module RemoveParentheses where

removeParenthesesHelper :: String -> Int -> String -> String
removeParenthesesHelper [] _ res = reverse res
removeParenthesesHelper (x : xs) count res
  | x == '(' = removeParenthesesHelper xs (count + 1) res
  | x == ')' = removeParenthesesHelper xs (count - 1) res
  | count == 0 = removeParenthesesHelper xs count (x : res)
  | otherwise = removeParenthesesHelper xs count res

removeParentheses :: String -> String
removeParentheses s = removeParenthesesHelper s 0 ""
