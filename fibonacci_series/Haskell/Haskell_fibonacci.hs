fibonacci :: Integer -> [Integer]
fibonacci n = map fst $ take (fromIntegral n) $ iterate (\(a, b) -> (b, a + b)) (1, 1)

main = do
  putStrLn "Enter the number of Fibonacci terms to be printed"
  input <- getLine
  let n = read input :: Integer
  putStrLn (show (fibonacci n))
