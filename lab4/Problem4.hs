module Problem4 where

myLength l = foldr (\_ y -> y + 1) 0 l
