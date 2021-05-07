-- 1. Give another calculation for the result of double (double 2)

double :: Int -> Int
double x = x + x

-- 2. Show that sum [x] = x for any number x.
sum' :: Num a => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

-- 3. Define a function product where product [2,3,4] = 24
product' :: Num a => [a] -> a
product' [] = 1
product' (x:xs) = x * product' xs

-- 4. Create a quick sort reserved list
quickSortRev :: Ord a => [a] -> [a]
quickSortRev [] = []
quickSortRev (x:xs) =
  let smaller = filter (<= x) xs
      larger  = filter (> x) xs
  in quickSortRev larger ++ [x] ++ quickSortRev smaller

-- 5. QuickSort unique values
quickSort :: Ord a => [a] -> [a]
quickSort [] = []
quickSort (x:xs) =
  let smaller = filter (<= x) xs
      larger  = filter (> x) xs
  in quickSort smaller ++ [x] ++ quickSort larger

quickSortUnique :: Ord a => [a] -> [a]
quickSortUnique [] = []
quickSortUnique (x:xs) =
  let smaller = filter (< x) xs
      larger  = filter (> x) xs
  in quickSortUnique smaller ++ [x] ++ quickSortUnique larger

main :: IO ()
main = do
  let doubleResult = (double . double) 2
  print doubleResult

  let sumList = sum [1]
  print sumList

  let productList = product' [2,3,4]
  print productList
  print $ productList == 24

  let reserveSortedList = quickSortRev [1,6,2,3,8,7]
  print reserveSortedList

  let sortedList = quickSort [2,2,3,1,1]
  print sortedList

  let sortedListUnique = quickSortUnique [2,2,3,1,1]
  print sortedListUnique

