module Internal
  ( MyBool (MyFalse, MyTrue),
    Truthy (isTruthy),
    myInternalAdd,
    printTruthiness,
  )
where

data MyBool = MyTrue | MyFalse deriving (Eq, Show)

class Truthy a where
  isTruthy :: a -> Bool

instance Truthy MyBool where
  isTruthy MyTrue = True
  isTruthy _ = False

instance Truthy Bool where
  isTruthy True = True
  isTruthy _ = False

printTruthiness :: Truthy a => a -> IO ()
printTruthiness x = do
  let xIsTruthy = isTruthy x
  putStrLn $ "isTruthy=" ++ show xIsTruthy

myInternalAdd :: Int -> Int -> Int
myInternalAdd x y = x + y
