module Problem18 where

slice :: [a] -> Int -> Int -> [a]
slice _ l r | l < 1 || l > r = error "wrong l r"
slice [] _ _ = []
slice x l r = reverse $ helper x l r 1 [] where
        --helper x l r cnt acc
        helper :: [a] -> Int -> Int -> Int -> [a] -> [a]
        helper [] _ _ _ acc = acc
        helper (x : xs) l r cnt acc | cnt == r              = x : acc
                                    | l <= cnt && cnt <= r  = helper xs l r (cnt + 1) (x : acc)
                                    | otherwise             = helper xs l r (cnt + 1) acc
