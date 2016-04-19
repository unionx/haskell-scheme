module Main where
import System.Environment
import Text.ParserCombinators.Parsec hiding (spaces)

main :: IO ()
main = do args <- getArgs
          putStrLn ("Hello, " ++ args !! 0)

symbol :: Parser Char
symbol = oneOf "!$%&|*+-/:<=?>@^_~#"

readExp :: String -> String
readExp input = case parse symbol "lisp" input of
    Left err -> "No match: " ++ show err
    Right val -> "Found value"