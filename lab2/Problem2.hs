module Problem2 where

myButLast :: [a] -> a
myButLast [] = error "list is empty"
myButLast [_] = undefined
myButLast [x, _] = x
myButLast (_ : xs) = myButLast xs
