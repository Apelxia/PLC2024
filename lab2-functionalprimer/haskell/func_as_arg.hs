--create inpFunc
inpFunc = [a..b] where 
    a = 1 --this will be replaced with user input
    b = 5 --this will be replaced with user input

--Define applicatorFunc
applicatorFunc :: [Int] -> Char -> Double
applicatorFunc inpFunc s =
  if s == 's'
    then fromIntegral (sum inpFunc)
    else fromIntegral (sum inpFunc) / fromIntegral (length inpFunc)


main = do
  putStrLn "Enter the start and end values for the list (a b):"
  input <- getLine
  let [start, end] = map read (words input) :: [Int]
      inpFunc = [start..end]
      result = applicatorFunc inpFunc 'a'
  putStrLn ("sum/average = " ++ show result)

 