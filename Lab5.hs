findNext :: (Num t, Eq t) => t -> [t] -> t
findNext _ [] = -1
findNext n (x:xs) = 
					if n ==  x	
					then 
					 if length xs == 0
					 then
						-1
					 else
					 head xs
					else findNext n xs		
					



-- ****************************done				
 -- calls findPrev' wich reverse the O.G list
findPrev :: (Eq t, Num t) => t -> [t] -> t 
findPrev n (x:xs) = findPrev' n (reverse (x:xs))
     where
	 -- check to see if list is empty 
	findPrev' _ [] = -1
	-- runs through whole list
	findPrev' n (x:xs) =
	-- Once number matches a number matches the list get the tail of remaining list then head of xs 
	                   if n == x
					   then
					    if length xs == 0
					 then
						-1
					 else
					 head xs
					   else findPrev' n xs
	-- ******************************done
sum' :: Integral p => p -> p	
sum' 0 = 0
sum' x = (mod x 10) + sum' (div x 10)