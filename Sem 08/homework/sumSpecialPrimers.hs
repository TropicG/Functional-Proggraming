
--checks if the given argument is a prime number
primeOneLineLC :: Int -> Bool
primeOneLineLC n = n > 1 && null [ d | d <- [2 .. n - 1], mod n d == 0]

--checks if the digit is inside the number
insideDigit :: Int -> Int -> Bool
insideDigit num digit 

    --if the number is smaller than 10 compares it to the digit
    | num < 10 && num /= digit = False
    | num < 10 && num == digit = True 

    --if the current digit is == to digit returns true
    | (mod num 10) == digit = True

    --else we return the function with num /10
    | otherwise = insideDigit (div num 10) digit



sumSpecialPrimes a b sum count digit

    --if we cant get more prime numbers we return the sum of those prime numbers
    | count == 0 = sum

    --if we got to the end of the range we return the sum
    | a /= b = sum

    --if a given number is prime and the digit argument is inside the prime number
    --we return the function with added 1 to a, b, a added to sum, count -1 and the digit
    | primeOneLine a && insideDigit a digit = sumSpecialPrimes (a+1) b (sum+a) (count-1) digit

    --otherwise we rethrn the function with a +1 b sum count and digit
    | otherwise = sumSpecialPrimes (a+1) b sum count digit