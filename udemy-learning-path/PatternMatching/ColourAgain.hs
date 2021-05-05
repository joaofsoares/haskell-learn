module PatternMatching.ColourAgain where

data Colour = RGB Int Int Int deriving (Show)

red :: Colour -> Int
red (RGB r _ _) = r

-- Using lambda red = \(RGB r _ _) -> r

main :: IO ()
main = print $ red (RGB 100 200 300)
