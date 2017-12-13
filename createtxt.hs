import System.IO
import Data.Char
main = do
   ogFile <- readFile "lab7.txt"
   writeFile "leet.txt" (convertFile ogFile)

convertFile :: String -> String;
convertFile [] = []
convertFile (x:xs)
          | x == 'o' = '0':convertFile xs
          | x == 'e' = '3':convertFile xs
          | x == 'a' = '@':convertFile xs
          | x == 'l' = '1':convertFile xs
          | otherwise = x:convertFile xs