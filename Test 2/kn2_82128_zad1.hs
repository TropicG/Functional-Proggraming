reverseNum :: Int -> Int -> Int
reverseNum 0 newNum = newNum
reverseNum num newNum = reverseNum (div num 10) ( (newNum * 10) + (mod num 10) )


negative :: Int -> Bool
negative num = if num < 0 then True else False

squareDigit :: Int -> Int
squareDigit num = helper (reverseNum num 0) 0 (negative num)

helper :: Int -> Int -> Bool -> Int
helper 0 numDigits negative = if negative then (numDigits - (numDigits *2)) else numDigits
helper num numDigits negative
    | (lastDigit^2) > 10 = helper (div num 10) ( (numDigits * 100) + (lastDigit^2)) negative
    | otherwise = helper (div num 10) ( (numDigits * 10) + (lastDigit^2) ) negative
    where lastDigit = mod num 10