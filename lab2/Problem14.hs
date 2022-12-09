module Problem14 where

dupli :: [a] -> [a]
dupli = myConcat . myMap (\x -> [x, x])

myMap :: (a -> b) -> [a] -> [b]
myMap _ [] = []
myMap f (x : xs) = f x : myMap f xs

myConcat :: [[a]] -> [a]
myConcat [] = []
myConcat (x : xs) = x ++ myConcat xs
