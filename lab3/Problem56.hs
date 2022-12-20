module Problem56 where                        

data Tree a = Empty | Branch a (Tree a) (Tree a)
    deriving Show

treesAreStrucEq :: Tree a -> Tree b -> Bool
treesAreStrucEq Empty            Empty            = True
treesAreStrucEq Empty            (Branch _ _ _)   = False
treesAreStrucEq (Branch _ _ _)   Empty            = False
treesAreStrucEq (Branch _ l1 r1) (Branch _ l2 r2) = treesAreStrucEq l1 l2 && treesAreStrucEq r1 r2

symmetric :: Tree a -> Bool
symmetric Empty          = True
symmetric (Branch _ l r) = treesAreStrucEq l r
