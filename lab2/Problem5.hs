module Problem5 where
                
myReverse :: [a] -> [a]
myReverse l = rev l [] where
    rev []          r   = r
    rev (x : xs)    r   = rev xs (x : r)
