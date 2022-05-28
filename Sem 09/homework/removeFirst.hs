
removeFirst :: Int -> [Int] -> [Int]
--end of recursion, if the number is not in the list we return empty list
removeFirst num [] = []

--gets the first element from xs and compares it to x, if x == num then we return the other list, else we append the first element to the list
removeFirst num (x:xs) = if x == num then xs else x : removeFirst num xs