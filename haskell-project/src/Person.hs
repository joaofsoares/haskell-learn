module Person where

data Person = Person {name :: String, age :: Int} deriving (Show)

class MyPerson p where
  getName :: p -> String
  getAge :: p -> Int

instance MyPerson Person where
  getName (Person name age) = name
  getAge (Person name age) = age

printMyPerson :: MyPerson p => p -> IO ()
printMyPerson p = do
  let name = getName p
  let age = getAge p
  print name
  print age
