module App.SortingList (sort) where

insert :: Ord a => a -> [a] -> [a] -> [a]
insert n sorted acc
  | null sorted = reverse acc ++ (n : sorted)
  | n <= head sorted = reverse acc ++ (n : sorted)
  | otherwise = insert n (tail sorted) (head sorted : acc)

sort :: Ord a => [a] -> [a]
sort list = aux list []
  where
    aux list acc
      | null list = acc
      | otherwise = aux (tail list) (insert (head list) acc [])
