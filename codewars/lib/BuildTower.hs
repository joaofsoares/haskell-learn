module BuildTower where

createLine :: Int -> Int -> String
createLine n mx =
  let diff = mx - n
      side = if diff > 0 then div diff 2 else diff
   in concat (replicate side " " ++ replicate n "*" ++ replicate side " ")

getMaxLines :: Int -> [(Int, Int)]
getMaxLines n = map (\x -> (x, max)) lines
  where
    lines = take n [1, 3 ..]
    max = last lines

buildTower :: Int -> [String]
buildTower n = map (uncurry createLine) (getMaxLines n)
