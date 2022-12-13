module Problem6 where

myReverse l = foldl (\x y -> y : x) [] l

isPalindrome l = myReverse l == l
