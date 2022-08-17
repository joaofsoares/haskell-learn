module CalcStringRotation where

shiftedDiff :: String -> String -> Int
shiftedDiff x y = helper x y 0
  where
    helper x y counter
      | x == y = counter
      | counter > length y = -1
      | otherwise = helper (last x : init x) y (counter + 1)
