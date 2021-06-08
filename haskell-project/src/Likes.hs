module Likes where

createResponse :: [String] -> String
createResponse [] = " like this"
createResponse [x] = " and " ++ x ++ createResponse []
createResponse (x:y:xs)
  | length (x:y:xs) > 3  = x ++ ", " ++ y ++ " and " ++ show (length xs) ++ " others like this" 
  | length (x:y:xs) == 2 = x ++ " and " ++ y ++ createResponse xs
  | otherwise            = x ++ ", " ++ y ++ createResponse xs

likes :: [String] -> String
likes [] = "no one likes this"
likes (x:[]) = x ++ " likes this"
likes (x:xs) = createResponse (x:xs)

likes' :: [String] -> String
likes' list = unwords [subjects list, message list]
    
subjects []                 = "no one"
subjects [x]                = x
subjects [x, y]             = unwords [x, "and", y]
subjects [x, y, z]          = unwords [x ++ ",", y, "and", z]
subjects (x : y : _ : rest) = unwords [x ++ ",", y, "and", show (length rest + 1), "others"]

message list
    | length list < 2 = "likes this"
    | otherwise       = "like this"

