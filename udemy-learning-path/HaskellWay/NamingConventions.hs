module Main (main) where

data MyType = MyDataConstructor String

class MyClass a where
  name :: a -> String

instance MyClass MyType where
  name (MyDataConstructor name) = name

func :: p -> p
func x = x

func' :: p -> p
func' y = y

main :: IO ()
main = do
  print $ name (MyDataConstructor "Haskell")
  print $ 100 + 200
  print $ (+) 100 200
