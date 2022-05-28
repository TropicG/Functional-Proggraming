
isPresent :: Int -> [Int] -> Bool
--end of recursion if the list is empty
isPresent _ [] = False

--takes the first element from the list and compares it to x 
-- if they are equal we return true else we check the rest
isPresent num (x:xs) = if num == x then True else isPresent num xs