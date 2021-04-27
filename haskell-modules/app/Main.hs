module Main where

import qualified Data.HashMap as HM
import qualified Data.Vector as V
import Lib

xs :: V.Vector Int
xs = V.fromList [1, 2, 3, 4, 5]

ys :: HM.Map Int String
ys =
  HM.fromList
    [ (1, "one"),
      (2, "two"),
      (3, "three"),
      (4, "four"),
      (5, "five")
    ]

spellOut :: HM.Map Int String -> V.Vector Int -> [String]
spellOut m =
  V.foldr
    (\a b -> HM.findWithDefault "(not found)" a m : b)
    []

main :: IO ()
main = do
  someFunc

  let mbPort = mkPort 80
  case mbPort of
    Nothing -> error "Invalid Port!"
    Just port -> do
      let a = ListeningAddress 127 0 0 1 port
      print a

  print xs
  print ys

  print $ spellOut ys xs
