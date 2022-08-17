module FramedReflection where

import Data.List.Split

createMirrorBorder :: Int -> String -> String
createMirrorBorder len end = concat (replicate (len + 4) "*") ++ end

formatWord :: String -> Int -> String
formatWord str len = "* " ++ reverse str ++ concat (replicate (len - length str) " ") ++ " *\n"

formatWords :: [String] -> Int -> String
formatWords strs len = concatMap (`formatWord` len) strs

mirror :: String -> String
mirror s = createMirrorBorder maxLength "\n" ++ formatWords ws maxLength ++ createMirrorBorder maxLength ""
  where
    ws = splitOn " " s
    maxLength = (maximum . map length) ws
