module BitCounting where

convertToBin :: Int -> [Int]
convertToBin 0 = [0]
convertToBin n = convertToBin (n `quot` 2) ++ [n `rem` 2]

countBits :: Int -> Int
countBits = sum . convertToBin

countBits' :: Int -> Int
countBits' 0 = 0
countBits' n = n `mod` 2 + countBits' (n `div` 2)

