-- usage ghci haskell_fibonacci.hs
-- then fib 5 for example
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)