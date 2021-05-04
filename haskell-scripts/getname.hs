getName :: IO String
getName = do
  putStrLn "Enter your name:"
  name <- getLine
  return name


main = do
  name <- getName
  putStrLn $ "Hello, " ++ name

