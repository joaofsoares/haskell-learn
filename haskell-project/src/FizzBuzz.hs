module FizzBuzz where

fizz :: Int -> String
fizz n
  | n `mod` 3 == 0 && n `mod` 5 == 0 = "Fizz Buzz!"
  | n `mod` 3 == 0 = "Fizz!"
  | n `mod` 5 == 0 = "Buzz!"
  | otherwise = show n

printFizz :: [Int] -> IO ()
printFizz [] = putStrLn "end!"
printFizz (x : xs) = do
  putStrLn $ fizz x
  printFizz xs
