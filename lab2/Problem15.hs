module Problem15 where

repli:: [a] -> Integer -> [a]
repli x k = myConcat $ myMap (toKList k) x

toKList :: Integer -> a -> [a]
toKList 0 _ = []
toKList k e = e : toKList (k - 1) e

myMap :: (a -> b) -> [a] -> [b]
myMap _ [] = []
myMap f (x : xs) = f x : myMap f xs

myConcat :: [[a]] -> [a]
myConcat [] = []
myConcat (x : xs) = x ++ myConcat xs
