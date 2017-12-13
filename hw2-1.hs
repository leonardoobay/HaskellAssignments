--number1

divfive x y 
     |x `mod` y == 0 = True
     |otherwise = False
divcheck x = divfive x 5    
--number2

ctail x =   if length x == 0 
                  then
                   x 
                  else 
                     if length x == 1
                       then 
                        tail x 
                     else tail (tail x)

check = check' 'a' 'f'
check' beg end "" = True
check' beg end z = ((head z >= beg) && (head z <= end) && (check' beg end (ctail z)))


--number3 
temp l1 l2 = l1+l2
zipsum :: Num a => [a] -> [a] -> [a]
zipsum list1 list2 = do                 
  let zipcurr = zip list1 list2                      
      zipcurr' = map (\(l1,l2)-> l1+l2) zipcurr       
  zipcurr'                                            
-- number4
func2 str = map head $ map words str
--number5

func1 :: [[String]] -> [[String]]
func1 mat = map ( \x -> map (\y -> if y== "" then "0" else y )  x) mat
--number 6
group :: [a] -> [(a,a)]
group [] = []
group [a] = []
group (x:y:xs) = (x,y): (group xs)
--number 7
prodof2 :: [Int] -> [Int]
prodof2 list = foldl (\x(a,b)-> x ++ [a*b]) [] $ group list
--number8
csum ::[Int] -> [Int]
csum [] = []
csum args = tail ( scanl (\b a -> a+b) 0 args)
-- number 9
applyThrice f x = (f.f) $ f x
--number10
isLowerCase :: Char -> Bool
isLowerCase  = flip elem ['a'..'z']
--number11

sortl :: [String] -> [String]
sortl  args = sort (map (\x-> (length(head x),x)) (map words args)) [] 0

sort [] st i =  map (\(x,y) -> unwords y ) st
sort lst st i =  sort ((filter (\(x,y) -> x/=i)) lst) (st++(filter (\(x,y) -> x==i) lst)) (i+1)

--number12
separatelists :: [Char] -> [String]
separatelists args = filter (\str ->str/= "" ) ( zipWith (\x alphabet -> filter (\char -> char==alphabet) x) (repeat args)  ['a'..'z'])