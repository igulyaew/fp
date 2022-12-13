module Problem5 where

myReverse l = foldl (\x y -> y : x) [] l
