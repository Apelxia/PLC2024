
sgn :: (Ord a, Num a) => a -> Int
sgn x | x < 0 = -1
      | x == 0 = 0
      | x > 0  = 1
    --if x < 0 then -1 else if x == 0 then 0 else 1


main = do
    putStrLn "Please enter a number"
    input <- getLine 
    let x = (read input :: Int)
    putStrLn( show (sgn (x)) )