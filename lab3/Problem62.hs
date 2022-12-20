module Problem62 where                        
         
data Tree a = Empty | Branch a (Tree a) (Tree a)
    deriving Show

internals :: Tree a -> [a]
internals Empty = []
internals (Branch _ Empty Empty) = []
internals (Branch key l r) = key : internals l ++ internals r

tree = Branch 2 (Branch 2 (Branch 1 Empty Empty) Empty) 
                (Branch 8 (Branch 1 Empty Empty) (Branch 1 Empty Empty))
