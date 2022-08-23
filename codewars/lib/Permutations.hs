module Permutations where

import Data.List (nub, sort)

perms :: [a] -> [[a]]
perms (a : as) = [bs ++ a : cs | perm <- perms as, (bs, cs) <- splits perm]
perms [] = [[]]

splits :: [a] -> [([a], [a])]
splits [] = [([], [])]
splits (a : as) = ([], a : as) : [(a : bs, cs) | (bs, cs) <- splits as]

permutations :: String -> [String]
permutations = sort . nub . perms
