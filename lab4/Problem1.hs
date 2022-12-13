module Problem1 where

myLast l = foldl (flip const) undefined l
