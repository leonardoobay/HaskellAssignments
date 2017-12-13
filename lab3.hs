
sqrnum :: Integer -> Integer; sqrnum x = x*x;


multiply :: Int -> Int -> Int;  
multiply q w = q * w;  


doubleUp :: Num e => e -> e; doubleUp e = e + e;


 
  


eng :: (Integral g) => g -> String;  
eng 1 = "Once";  
eng 2 = "Twice";  
eng 3 = "Thrice!";   
eng x = "Don't know how to say that in English.";



first :: (a, b, c, d) -> a;  
first (x, _, _, _) = x;

second :: (a, b, c, d) -> b;  
second (_, x, _, _) = x;

third :: (a, b, c, d) -> c;  
third (_, _, x, _) = x;

fourth :: (a, b, c, d) -> d;  
fourth (_, _, _, x) = x;



power :: Integer -> Integer -> Integer;
power o 1 = o;
power o p = o * power o (p-1);






