fib a b = a : fib b (a + b)
main = do putStrLn "Enter fibonacci index: "
          line <- getLine
          let n = read line
          putStrLn "The fibonacci sequence is:"
          print $ take n $ fib 0 1
