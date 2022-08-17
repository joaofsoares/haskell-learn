module DivisibleByThree where

divisibleByThree :: String -> Bool
divisibleByThree s = (x - 3 * div x 3) == 0
  where
    x = read s :: Integer
