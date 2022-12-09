module Problem22 where

range :: Int -> Int -> [Int]
range l r | l <= r      = l : range (l + 1) r
          | otherwise   = []
