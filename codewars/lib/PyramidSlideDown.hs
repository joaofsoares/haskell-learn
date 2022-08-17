module PyramidSlideDown where

getLargestSlideDown :: [[Int]] -> [Int]
getLargestSlideDown (x : y : z) = getLargestSlideDown (zipWith (+) (getLargestValue x []) y : z)
getLargestSlideDown [x] = x
getLargestSlideDown [] = [0]

getLargestValue :: [Int] -> [Int] -> [Int]
getLargestValue (x : y : z) values = getLargestValue (y : z) (max x y : values)
getLargestValue _ values = reverse values

longestSlideDown :: [[Int]] -> Int
longestSlideDown = head . getLargestSlideDown . reverse
