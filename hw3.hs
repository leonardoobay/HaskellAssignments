frac 0 = 0;
frac n  =  1/n + frac(n-1);


frak 0 =0;
frak m = m/(m+1) + frak (m-1); 




rmmax [_] = []
rmmax xs = take a xs ++ drop (a+1) xs where
                     a = maxy xs
  


maxy [] = error "Empty List"
maxy [_] = 0
maxy (x:xs) = maxpos' x 0 1 (xs) where
maxpos' mx maxpos n [] = maxpos
maxpos' mx maxpos n (x':xs)
            | mx < x' = maxpos' x' n (n+1) xs
            | otherwise = maxpos' mx maxpos (n+1) xs





sortit [] = error "Empty List"
sortit [x] = [x]
sortit xs = sortit' xs where
sortit' [] = []
sortit' xs' = sortit' (rmmax xs') ++ [xs' !! maxy xs']





