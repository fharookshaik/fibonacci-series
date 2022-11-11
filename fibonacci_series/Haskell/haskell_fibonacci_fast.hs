-- usage ghci haskell_fibonacci_fast.hs
-- then fib 5 for example
fastfib _ _ 0 = 0
fastfib _ _ 1 = 1
fastfib _ _ 2 = 1
fastfib fn1 fn2 3 = fn1 + fn2
fastfib fn1 fn2 counter = fastfib (fn1 + fn2) fn1 (counter - 1)

fib n = fastfib 1 1 n