module Problem9 where

pack :: Eq a => [a] -> [[a]]
pack [] = []
pack (x : xs) = reverse $ helper [] [x] (xs) where
    helper :: Eq a => [[a]] -> [a] -> [a] -> [[a]]
    helper acc l [] = l : acc
    helper acc l (x : xs) | head l == x = helper acc (x : l) xs
                          | otherwise   = helper (l : acc) [x] xs
