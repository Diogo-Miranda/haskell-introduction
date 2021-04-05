import Data.List
import System.IO

-- compile: ghc --make Program
main = do
    putStrLn "What is your name?"
    name <- getLine
    putStrLn ("Hello " ++ name)