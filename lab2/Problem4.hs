module Problem4 where
                
myLength :: [a] -> Integer
myLength [] = 0
myLength x = 1 + (myLength . tail) x
