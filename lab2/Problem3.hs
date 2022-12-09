module Problem3 where

elementAt :: [a] -> Integer -> a
elementAt [] _ = error "empty list"
elementAt (x : xs) k | k <= 0       = error "wrong index"
                     | k == 1       = x
                     | otherwise    = elementAt xs (k - 1)
