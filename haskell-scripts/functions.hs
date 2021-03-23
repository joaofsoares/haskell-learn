lucky :: Int -> String
lucky 7 = "LUCKY NUMBER SEVEN"
lucky x = "Sorry, you're out of luck, pal!"

sayMe :: Int -> String
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three!"
sayMe 4 = "Four!"
sayMe 5 = "Five!"
sayMe x = "Not between 1 and 5"

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

firstTuple :: (a,b,c) -> a
firstTuple (x, _, _) = x

head' :: [a] -> a
head' [] = error "cant call head on an empty list"
head' (x:_) = x

tell :: (Show a) => [a] -> String
tell [] = "the list is empty"
tell (x:[]) = "the list has one elment: " ++ show x
tell (x:y:[]) = "the list has two elements: " ++ show x ++ " and " ++ show y
tell (x:y:_) = "the list is long. The first two elements are: " ++ show x ++ " and " ++ show y

firstLetter :: String -> String
firstLetter "" = "Empty string"
firstLetter all@(x:xs) = "the first letter of " ++ all ++ " is " ++ [x]

bmiTell :: Double -> Double -> String
bmiTell weight height
  | weight / height ^ 2 <= 18.5 = "You're underweight"
  | weight / height ^ 2 <= 25.0 = "You're normal"
  | weight / height ^ 2 <= 30.0 = "You're fat"
  | otherwise                   = "You're a whale"

bmiTell' :: Double -> Double -> String
bmiTell' weight height
  | bmi <= skinny = "You're underweight"
  | bmi <= normal = "You're normal"
  | bmi <= fat    = "You're fat"
  | otherwise     = "You're a whale"
  where bmi    = weight / height ^ 2
        skinny = 18.5
        normal = 25.0
        fat    = 30.0

