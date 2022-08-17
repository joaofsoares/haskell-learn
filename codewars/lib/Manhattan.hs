module Manhattan where

manhattanDistance :: (Int, Int) -> (Int, Int) -> Int
manhattanDistance x y = abs (fst x - fst y) + abs (snd x - snd y)

-- or

manhattanDistance' :: (Int, Int) -> (Int, Int) -> Int
manhattanDistance' (x1, x2) (y1, y2) = abs (x1 - y1) + abs (x2 - y2)
