factorial :: (Ord p, Num p) => p -> p
factorial n = if n < 2 then 1 else n * factorial (n - 1)

main :: IO ()
main = print $ factorial 5
