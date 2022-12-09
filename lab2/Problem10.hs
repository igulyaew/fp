module Problem10 where

encode :: Eq a => [a] -> [(Integer, a)]
encode [] = []
encode (x : xs) = reverse $ helper [] 1 x xs where
    helper :: Eq a => [(Integer, a)] -> Integer -> a -> [a] -> [(Integer, a)]
    helper acc k l [] = (k, l) : acc
    helper acc k l (x : xs) | l == x    = helper acc (k + 1) l xs
                            | otherwise = helper ((k, l) : acc) 1 x xs
