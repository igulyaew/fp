module Problem17 where

mySplit :: [a] -> Int -> ([a], [a])
mySplit x k | k <= 0 = error "wrong len"
mySplit [] _ = ([], [])
mySplit x k = helper x k [] where
    helper :: [a] -> Int -> [a] -> ([a], [a])
    helper [] _ _ = error "wrong len"
    helper x 0 acc = (reverse acc, x)
    helper (x : xs) k acc = helper xs (k - 1) (x : acc)
