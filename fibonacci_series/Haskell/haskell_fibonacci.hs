--| Creating the summing function
--| Made with pattern matching
sum' :: Int -> Int
sum' 0 = 1
sum' 1 = 1
sum' x = sum' (x-1) + sum' (x-2)

--| Recursive function to create as many elements as you need
--| Since Haskell is lazy, it will only evaluate as many values as you are needing it to
neverEndingFibonacci :: [Int]
neverEndingFibonacci = [sum' x | x <- [0,1..]]

--| To comply with the outlined rules in CONTRIBUTING.md
--| returns x amount of the sequence in a list 
fibonacci x = take x neverEndingFibonacci
