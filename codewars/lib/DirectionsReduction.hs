module DirectionsReduction where

data Direction = North | East | West | South deriving (Eq, Show)

isOpposite :: Direction -> Direction -> Bool
isOpposite x y
  | (x == North && y == South) || (x == South && y == North) = True
  | (x == East && y == West) || (x == West && y == East) = True
  | otherwise = False

dirReduceHelper :: [Direction] -> [Direction] -> [Direction]
dirReduceHelper [] res = reverse res
dirReduceHelper (x : xs) res
  | null res = dirReduceHelper xs (x : res)
  | isOpposite (head res) x = dirReduceHelper xs (tail res)
  | otherwise = dirReduceHelper xs (x : res)

dirReduce :: [Direction] -> [Direction]
dirReduce dirs = dirReduceHelper dirs []
