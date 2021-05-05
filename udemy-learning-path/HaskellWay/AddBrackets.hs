addBrackets :: [Char] -> [Char]
addBrackets s = "[" ++ s ++ "]"

result :: [[Char]]
result = map addBrackets ["one", "two", "three"]

main :: IO ()
main = print result
