main = do
  putStrLn "Enter the number os elements:"
  input <- getLine
  let fibonacci = 0 : 1 : zipWith (+) fibonacci (tail fibonacci)
  print (take (read input :: Int) fibonacci)
