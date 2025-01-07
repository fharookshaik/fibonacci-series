sum' :: Int -> Int
sum' 0 = 1
sum' 1 = 1
sum' x = sum' (x-1) + sum' (x-2)

fibonacci :: [Int]
fibonacci = [sum' x | x <- [0,1..]]
