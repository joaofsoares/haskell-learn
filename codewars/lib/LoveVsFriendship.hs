module LoveVsFriendship where

alphabet = createAlphabet

createAlphabet :: [(Char, Int)]
createAlphabet = createAlphabetMap ['a' .. 'z'] 1

createAlphabetMap :: [Char] -> Int -> [(Char, Int)]
createAlphabetMap [] _ = []
createAlphabetMap (x : xs) cnt = (x, cnt) : createAlphabetMap xs (cnt + 1)

getCharValue :: Char -> Int
getCharValue c = (snd . head . filter (\t -> fst t == c)) alphabet

wordsToMarks :: String -> Int
wordsToMarks = sum . map getCharValue

-- third party solution
-- import Data.Char
-- wordToMarks :: String -> Int
-- wordToMarks = sum . map (\x -> ord x - 96)
