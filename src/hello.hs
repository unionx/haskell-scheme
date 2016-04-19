module Main where
import System.Environment
import Text.Pa

main :: IO ()
-- what is 'referential transparency'?
main = do args <- getArgs
          putStrLn ("Hello, " ++ args !! 0)
