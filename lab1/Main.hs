module Main where

qERoots :: Double -> Double -> Double -> (Bool, Double, Double)
qERoots a b c | a == 0       = error "NOT QE"
              | otherwise    = if d < 0 then (False, 0, 0) else (True, x1, x2) where 
                    d = b ^ 2 - 4 * a * c
                    x1 = (-b + sqrt(d)) / (2 * a)
                    x2 = (-b - sqrt(d)) / (2 * a)
                    
showRoots :: (Bool, Double, Double) -> String
showRoots (False, _, _) = "NOT ROOT OF QE"
showRoots (True, x1, x2) = if x1 == x2 then show x1 else show x1 ++ " " ++ show x2

solve = do
    a <- getLine
    b <- getLine
    c <- getLine
    putStrLn $ showRoots $ qERoots (read a :: Double) (read b :: Double) (read c :: Double)
