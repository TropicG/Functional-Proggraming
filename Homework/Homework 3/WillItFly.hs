

--helper function takes the list and list's size -1
helper :: [Int] -> Int -> Bool
helper xs size 
    --end of recursion, looks the last two elements and checks if the sub is in [1,size]
    | ( (length xs == 2) && (sub >= 1) && (sub <= size) ) = True
    --end of recursion, looks the last two elements and chckes if the sub is not in [1,size]
    | ( (length xs == 2) && ( (sub < 1) || (sub > size) ) ) = False
    --checks the current two elements are they not in [1,size]
    | ( sub < 1 ) || ( sub > size ) = False  
    --if the current two elements are in [1,size] we move on
    | otherwise = helper (tail xs) size
    --variable that checks the subtraction of the current two elements
    where sub = (abs (xs!!0 - xs!!1) )


willItFly :: [Int] -> Bool
-- if we are given empty list we return true
willItFly [] = True
--else we use the helper function
willItFly xs = helper xs ( (length xs) - 1)


