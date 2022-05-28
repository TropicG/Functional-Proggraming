
--takes the minimum for the symb to be met
takeMin:: String -> Int
takeMin str = ( fromEnum (str!!0) - fromEnum '0')

--takes the maximum for the symb to be met
takeMax :: String -> Int
takeMax str = ( fromEnum (str!!2) - fromEnum '0') 

--takes the symb
takeSymb :: [Char] -> Char
takeSymb str = (last str)

--takes the whole password
takePassword :: String -> [Char]
takePassword str = (tail (tail str))

--checks if the password is correct
correct :: [Char] -> Int -> Int -> Int -> Char -> Bool
--if we reached the end of the password we check if the symb met enough
correct [] count min max symb = if count >= min && count <= max then True else False
correct password count min max symb
    --if the first character of the password is the symb we return the function with increased count
    | (head password) == symb = correct (tail password) (count + 1) min max symb

    --else we return the function
    | otherwise = correct (tail password) count min max symb


--goes through all password to count the number of valid ones
helper :: [String] -> Int -> Int
--if we reached the end we return count
helper [] count = count
helper passwords count 
    --checks for correctnes the current password
    | (correct (takePassword (dropWhile (/= ':') (head passwords))) 0 (takeMin (takeWhile (/= ':') (head passwords))) (takeMax (takeWhile (/= ':') (head passwords))) (takeSymb (takeWhile (/= ':') (head passwords)))) = helper (tail passwords) (count + 1) 
    | otherwise = helper (tail passwords) count      

numValid :: [String] -> Int
numValid [] = 0
numValid info = helper info 0                                              