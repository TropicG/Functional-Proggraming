
--gets the sum of the divisors of given num
sumOfDiv :: Int -> Int -> Int -> Int
sumOfDiv num i sum
    --end of recursion, when i==n we return the sum
    | i == num = sum
    --if the current number is divisor of n we return the fuc with increased index and the sum is added to i
    | mod num i == 0 = sumOfDiv num (i + 1) (sum + i)
    --otherwise we return the function with increased index
    | otherwise = sumOfDiv num (i + 1) sum

naturalProduct :: [Int] -> Int -> Int
naturalProduct xs k = helper xs k 1

helper :: [Int] -> Int -> Int -> Int
--end of recursion, if we have reached the end of the list we return the production
helper [] k prod = prod;
helper (x:xs) k prod 
    | (x > 0) && (mod (sumOfDiv x 1 0) k) == 0 = helper xs k (prod * k)
    | otherwise = helper xs k prod  