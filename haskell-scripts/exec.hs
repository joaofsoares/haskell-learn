removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [c | c <- st, c `elem` ['A' .. 'Z']]

addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

circumference :: Double -> Double
circumference r = 2 * pi * r

main = do
  print $ removeNonUppercase "HASkell"
  print $ addThree 1 2 3
  print $ circumference 2
