module Lib
  ( someFunc,
    module Lib.Port,
    module Lib.ListeningAddress,
  )
where

import Internal
import Lib.ListeningAddress
import Lib.Port

data OtherBool = OtherTrue | OtherFalse

instance Truthy OtherBool where
  isTruthy OtherTrue = True
  isTruthy _ = False

someFunc :: IO ()
someFunc = do
  putStrLn $ "someFunc=" ++ show (myInternalAdd 123 456)
  putStrLn $ "MyTrue=" ++ show MyTrue

  printTruthiness MyTrue
  printTruthiness True
  printTruthiness OtherFalse

  let p0 = mkPort 1234
      p1 = mkPort 12345678

  print p0
  print p1
