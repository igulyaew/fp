module Problem16 where

dropEvery :: [a] -> Integer -> [a]
dropEvery [] _ = []
dropEvery _ k | k <= 0 = error "wrong index"
dropEvery x k = reverse $ helper 1 [] x k where
    -- helper cnt acc x k
    helper :: Integer -> [a] -> [a] -> Integer -> [a]
    helper _ acc [] _ = acc
    helper cnt acc (x : xs) k | cnt == k    = helper 1 acc xs k
                              | otherwise   = helper (cnt + 1) (x : acc) xs k
