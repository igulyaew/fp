module MyFunc where

myFilter :: (a -> Bool ) -> [a] -> [a]
myFilter _ [] = []
myFilter p (x:xs) | p x       = x : myFilter p xs
                  | otherwise = myFilter p xs
