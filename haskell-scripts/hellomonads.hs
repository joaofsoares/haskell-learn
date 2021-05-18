hello :: String -> IO String
hello x = do
  putStrLn $ "Hello, " ++ x
  putStrLn "What's your name?"
  name <- getLine
  return name

