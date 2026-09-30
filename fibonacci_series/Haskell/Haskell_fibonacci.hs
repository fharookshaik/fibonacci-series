import System.Exit (exitFailure)
import Text.Read (readMaybe)

fibonacci :: Int -> [Integer]
fibonacci n = take n (map fst (iterate step (0, 1)))
  where
    step (a, b) = (b, a + b)

main :: IO ()
main = do
  input <- getContents
  case readMaybe (unwords (words input)) :: Maybe Int of
    Just n | n >= 0 -> putStrLn (unwords (map show (fibonacci n)))
    _ -> exitFailure
