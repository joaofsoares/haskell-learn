module MaxLengthDiff where

combine :: [String] -> [String] -> [(String, String)]
combine xs ys = do
  x <- xs
  y <- ys
  return (x, y)

getDiff :: (String, String) -> Int
getDiff tup = abs $ length (fst tup) - length (snd tup)

calcDiff :: [String] -> [String] -> Int
calcDiff s1 s2 = maximum (map getDiff (combine s1 s2))

mxdiflg :: [String] -> [String] -> Maybe Int
mxdiflg s1 s2
  | null s1 || null s2 = Nothing
  | otherwise = Just (calcDiff s1 s2)
