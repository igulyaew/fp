module Problem1 where

myLast :: [a] -> a
myLast [] = error "list is empty"
myLast (x : []) = x
myLast (_ : xs) = myLast xs
