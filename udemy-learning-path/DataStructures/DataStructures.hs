module DataStructures.DataStructures where

data Compass = North | South | East | West
  deriving (Eq, Ord, Enum, Show)

data Expression
  = Number Int
  | Add Expression Expression
  | Subtract Expression Expression
  deriving (Eq, Ord, Show)
