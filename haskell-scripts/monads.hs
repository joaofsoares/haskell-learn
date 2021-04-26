generateTuple :: (Num b, Enum b) => b -> [[(b, b)]]
generateTuple n = do
  row <- [0 .. n]
  return $ do
    col <- [0 .. n]
    return (row, col)

main :: IO ()
main = print $ show (generateTuple 10)
