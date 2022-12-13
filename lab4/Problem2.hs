module Problem2 where

myButLast l = fst $ foldl (\(x, y) z -> (y, z)) (undefined, undefined) l
