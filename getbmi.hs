main = do
   putStrLn "Input Your Weight:"
   weightStr <- getLine
   let kg = (read weightStr :: Double)*0.453
   putStrLn "Input Your Height In Inches:"
   heightStr <- getLine
   let meter = (read heightStr :: Double)*0.0254
   putStrLn (bmiTell2 kg meter)

--bmiTell2 :: (RealFloat a) => a -> a -> String;
bmiTell2 weight height
        | bmi <= skinny = "your underweight"
        | bmi <= normal = "Your supposedly normal"
        | bmi <= fat = "your overweight"
        | otherwise  = "your obese"
        where bmi = weight / (height ^ 2)
              (skinny,normal,fat) = (18.5, 20.0, 30.0)