module Main where

import App.HelloWorld (printHelloWorld)

main :: IO ()
main = do
  print $ printHelloWorld "Haskell"
