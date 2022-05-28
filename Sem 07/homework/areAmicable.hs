main :: IO()
main = do
    print $ areAmicable 200 300 == False
    print $ areAmicable 220 284 == True
    print $ areAmicable 284 220 == True
    print $ areAmicable 1184 1210 == True
    print $ areAmicable 2620 2924 == True
    print $ areAmicable 6232 6368 == True



-- creates one list from 1 to a and sums all divisors from a
-- creates one list from 1 to b and sums all divisors from b
areAmicable a b = 
     sum [x | x <- [1..a-1], mod a x == 0 ] == sum [y | y <- [1..b-1], mod b y == 0] 

