f :: Num a => a -> a
f x = x + 10

g :: Num a => a -> a
g x = x * x

main :: IO ()
main = print $ map (g . f) [1, 2, 3]
