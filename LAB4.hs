
generation :: (Integral g) => g -> String
generation year
    | year >= 1995 = "Generation Z"
    | year >= 1980 = "Millenial"
    | year >= 1965 = "Generation X"
    | year >= 1945 = "Baby Boomer"
    | year >= 1933 = "Silent Generation"
	| otherwise  = "The greatest Generation"
	
	
generation2 :: (Integral g) => g -> String
generation2 age
    | year >= 1995 = "Generation Z"
    | year >= 1980 = "Millenial"
    | year >= 1965 = "Generation X"
    | year >= 1945 = "Baby Boomer"
    | year >= 1933 = "Silent Generation"
	| otherwise  = "The greatest Generation"
	where year = 2017 - age
	
	

findhypo :: (RealFloat a) => [(a,a)]->[a]
findhypo  xs = [hypotenuse l r | (l,r) <-xs]
	where hypotenuse leftside rightside = sqrt (leftside*leftside+rightside*rightside)

	



	
	
	
	
	
	