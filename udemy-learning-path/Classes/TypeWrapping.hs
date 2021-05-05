module Classes.TypeWrapping where

data Quartenion = Q
  { qR :: Double,
    qI :: Double,
    qJ :: Double,
    qK :: Double
  }

newtype PrettyQuartenion = PrettyQuartenion {unPrettyQuartenion :: Quartenion}

instance Show PrettyQuartenion where
  show q =
    let q' = unPrettyQuartenion q
     in "("
          ++ show (qR q')
          ++ " + "
          ++ show (qI q')
          ++ "i + "
          ++ show (qJ q')
          ++ "j + "
          ++ show (qK q')
          ++ "k)"

newtype UglyQuaternion = UglyQuaternion {unUglyQuaternion :: Quartenion}

instance Show UglyQuaternion where
  show q =
    let q' = unUglyQuaternion q
     in show (qR q') ++ ","
          ++ show (qI q')
          ++ ","
          ++ show (qJ q')
          ++ ","
          ++ show (qK q')
          ++ ")"

main :: IO ()
main = do
  print $ PrettyQuartenion (Q 1 2 3 4)
  print $ UglyQuaternion (Q 1 2 3 4)
