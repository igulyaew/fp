module Problem61 where                        
         
data Tree a = Empty | Branch a (Tree a) (Tree a)
    deriving Show

countLeaves :: Tree a -> Int
countLeaves Empty = 0
countLeaves (Branch _ Empty Empty) = 1
countLeaves (Branch _ l r) = countLeaves l + countLeaves r

tree = Branch 1 (Branch 1 (Branch 1 Empty Empty) Empty) 
                (Branch 1 (Branch 1 Empty Empty) (Branch 1 Empty Empty))
