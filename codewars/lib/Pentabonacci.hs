module Pentabonacci where

countOddPentaFib :: Int -> Int
countOddPentaFib n =
  let count = div n 6 * 2
      rest = mod n 6
      result = if rest < 3 then count + rest else count + 2
   in if n > 1 then result - 1 else result

-- countOddPentaFib :: Int -> Int
-- countOddPentaFib 0 = 0
-- countOddPentaFib 1 = 1
-- countOddPentaFib n = (n - 1) `div` 6 + (n - 2) `div` 6 + 1
