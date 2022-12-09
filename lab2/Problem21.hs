module Problem21 where

insertAt :: a -> [a] -> Int -> [a]
insertAt e xs 1 = e : xs
insertAt e l n = l1 ++ e : l2 where
    (l1, l2) = splitAt (n - 1) l
