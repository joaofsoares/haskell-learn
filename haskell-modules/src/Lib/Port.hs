module Lib.Port where

newtype Port = Port {unPort :: Int} deriving (Show)

mkPort :: Int -> Maybe Port
mkPort x
  | x < 0 || x > 65535 = Nothing
  | otherwise = Just $ Port x
