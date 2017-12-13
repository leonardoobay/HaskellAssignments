main = do
    putStrLn "Type a phrase"
    phrase <- getLine
    putStrLn (convertChar phrase)
convertChar :: String -> String;
convertChar [] = []
convertChar (x:xs)
          | x=='o' = '0':convertChar xs
          | x=='e' = '3':convertChar xs
          | x=='a' = '@':convertChar xs
          | x=='l' = '1':convertChar xs
          | otherwise = x:convertChar xs