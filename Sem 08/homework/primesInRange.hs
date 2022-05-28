
--checks if the given argument is a prime number
primeOneLineLC :: Int -> Bool
primeOneLineLC n = n > 1 && null [ d | d <- [2 .. n - 1], mod n d == 0]

-- creates a list with all the primes numbers in the range [x,y]
primesInRange :: Int -> Int -> [Int]
primesInRange x y = [a | a<-[x..y], primeOneLineLC a]