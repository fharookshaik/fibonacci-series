fib :: (num, num, num) ->  [char]

fib(num,a,b) = show(a+b) ++ " " ++  fib((num - 1),(a+b),a), if(a > 0 & num > 1)
                   = show(a) ++ " " ++ show(b) ++ " " ++ show(a+b) ++ " " ++ fib((num - 1),(a+b),b), if(a == 0)
                   = [], otherwise

showFib :: num -> [char]
showFib num = "\n" ++  fib(num, 0, 1) ++ "\n"
