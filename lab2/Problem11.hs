module Problem11 where

data ListItem a = Single a | Multiple Int a
    deriving (Show)
    
encodeModified :: Eq a => [a] -> [ListItem a]
encodeModified = map encodeHelper . encode
    where
      encodeHelper (1,x) = Single x
      encodeHelper (n,x) = Multiple n x

encode :: Eq a => [a] -> [(Int, a)]
encode [] = []
encode (x : xs) = reverse $ helper [] 1 x xs where
    helper :: Eq a => [(Int, a)] -> Int -> a -> [a] -> [(Int, a)]
    helper acc k l [] = (k, l) : acc
    helper acc k l (x : xs) | l == x    = helper acc (k + 1) l xs
                            | otherwise = helper ((k, l) : acc) 1 x xs
