module Tree where

data Tree = Leaf | Node Int Tree Tree deriving (Show, Ord, Eq)

treeDepth :: Tree -> Int
treeDepth Leaf = 0
treeDepth (Node _ leftSubTree rightSubTree) =
  1 + max (treeDepth leftSubTree) (treeDepth rightSubTree)

treeSum :: Tree -> Int
treeSum Leaf = 0
treeSum (Node x leftSubTree rightSubTree) =
  x + (treeSum leftSubTree) + (treeSum rightSubTree)

isSortedTree :: Tree -> Int -> Int -> Bool
isSortedTree Leaf _ _ = True
isSortedTree (Node x leftSubTree rightSubTree) minVal maxVal =
  let leftSorted  = isSortedTree leftSubTree minVal x
      rightSorted = isSortedTree rightSubTree x maxVal
  in x >= minVal && x < maxVal && leftSorted && rightSorted

addNewMax :: Tree -> Tree
addNewMax Leaf = Node 0 Leaf Leaf
addNewMax (Node x t1 Leaf) = Node x t1 (Node (x + 1) Leaf Leaf)
addNewMax (Node x t1 t2) = Node x t1 (addNewMax t2)

insert :: Int -> Tree -> Tree
insert x Leaf = (Node x Leaf Leaf)
insert x (Node value subTree1 subTree2) 
  | x > value = Node value subTree1 (insert x subTree2)
  | otherwise = Node value (insert x subTree1) subTree2

convertTreeToList :: Tree -> [Int]
convertTreeToList Leaf = []
convertTreeToList (Node value subtree1 subtree2) =
  convertTreeToList subtree1 ++ [value] ++ convertTreeToList subtree2

