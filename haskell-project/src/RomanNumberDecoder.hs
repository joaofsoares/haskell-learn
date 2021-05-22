module RomanNumberDecoder where

decoderHelper :: Char -> Int
decoderHelper x
  | x == 'I'  = 1
  | x == 'V'  = 5
  | x == 'X'  = 10
  | x == 'L'  = 50
  | x == 'C'  = 100
  | x == 'D'  = 500
  | x == 'M'  = 1000
  | otherwise = 0

calculate :: [Int] -> Int -> Int
calculate [] acc = acc
calculate (x:[]) acc = acc + x
calculate (x:xs) acc
  | x < head xs = calculate xs (acc - x)
  | otherwise   = calculate xs (acc + x)

decoder :: String -> Int
decoder num = calculate (map decoderHelper num) 0

