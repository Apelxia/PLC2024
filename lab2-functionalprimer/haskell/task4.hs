ask :: String -> Int -> IO ()
ask prompt count =
  do
  putStrLn (prompt ++ replicate count '!')
  line <- getLine
  if line == "quit"
    then putStrLn ("quitting")
    else if line == ""
    then ask prompt (count + 1)
    else putStrLn ("you said: " ++ reverse line)

main :: IO ()
main =
  do
  let prompt = "please say something"
  ask prompt 0


