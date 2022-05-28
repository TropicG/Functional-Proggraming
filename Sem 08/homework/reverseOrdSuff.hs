reverseOrdSuff :: Int -> Int
reverseOrdSuff 0 = 0
reverseOrdSuff num = helper (div num 10) (mod num 10) 0

helper :: Int -> Int -> Int -> Int
helper 0 lastDigit suff = suff
helper num lastDigit suff
    | lastDigit >= (mod num 10) = (suff*10 + lastDigit)
    | otherwise = helper (div num 10) (mod num 10) ((suff*10) + lastDigit)