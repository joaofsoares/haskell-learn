data Person = Person {name :: String, age :: Int} deriving (Show)

class MyPerson p where
  getName :: p -> String
  getAge :: p -> Int

instance MyPerson Person where
  getName (Person name age) = name
  getAge (Person name age) = age

printPerson :: MyPerson p => p -> IO ()
printPerson p = do
  let personName = getName p
  let personAge = getAge p
  print personName
  print personAge

main :: IO ()
main = do
  printPerson $ Person "PersonName" 42
