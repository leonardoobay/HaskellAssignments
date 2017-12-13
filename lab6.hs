-- number 1 
adz x y z= x+y+z; 
addingten = adz 10;
-- number 2
checklow:: Char -> Bool  
checklow = (`elem` ['a'..'z'])  


--number 3
applythree :: (t -> t) -> t -> t
applythree f x = f(f(f x))

--number 4 

--map' _ [] = []
--map' [x] = [2*x]
--map'  f  (x:xs) =   f x  : (map' xs)


-- dob  _ [] = []
--dob  _ [x] = [2*x]
--dob  f  (x:y:xs) = f ( x:y:(dob xs))

--number 5
zip' _ [] _ _ = []
zip' _ _ [] _ = []
zip' _ _ _ [] = []
zip' f (x:xs) (y:ys) (z:zs) = f x (f y z) : zip' f xs ys zs
