module IntroFuncs.Functions where

import Data.Maybe (fromMaybe)

main :: IO ()
main = do
  print $ findNum "one"
  print $ findNum "five"
  putStrLn $ greet "World"

greeting :: [Char]
greeting = "Howdy "

greet :: [Char] -> [Char]
greet who = greeting ++ who

add :: Int -> Int -> Int
add a b = a + b

-- trying since here

nums :: [([Char], Integer)]
nums = [("one", 1), ("two", 2)]

findNum :: [Char] -> Integer
findNum s =
  let value = lookup s nums
   in Data.Maybe.fromMaybe 0 value
