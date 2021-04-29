func :: IO a -> (a -> IO b) -> IO b
func = (>>=)

g :: IO () -> IO () -> IO ()
g = (>>)

-- using bind
-- main :: IO ()
-- main = do
--   func (readFile "exampleio.hs") putStrLn
--   putStrLn "##############################"
--   readFile "exampleio.hs" >>= putStrLn

-- using then
-- main :: IO ()
-- main =
--   putStrLn "Begin"
--     >> (readFile "exampleio.hs" >>= putStrLn)
--     >> putStrLn "End"

-- using do
main :: IO ()
main = do
  putStrLn "Begin"
  x <- readFile "exampleio.hs"
  putStrLn x
  putStrLn "End"
