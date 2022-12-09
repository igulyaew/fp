module Problem8 where

compress :: Eq a => [a] -> [a]
compress [] = []
compress (x : xs) = helper x xs where
    helper :: Eq a => a -> [a] -> [a]
    helper l [] = [l]
    helper l (x : xs) | x == l      = helper l xs
                      | otherwise   = l : helper x xs 
