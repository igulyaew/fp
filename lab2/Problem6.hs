module Problem6 where

isPalindrome :: Eq a => [a] -> Bool
isPalindrome x = myReverse x == x
                
myReverse :: [a] -> [a]
myReverse l = rev l [] where
    rev []          r   = r
    rev (x : xs)    r   = rev xs (x : r)
