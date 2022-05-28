main :: IO()




pack :: [Int] -> [[Int]]
pack xs = helper xs []
where 

    helper :: [Int] -> [Int] -> [[Int]]

    --end of recursion if the argument list is empty we return the list of sublist
    helper [] current = current

    --end of recursion if there is only one element left we add him to current
    helper [x] current = (current ++ [x])

    --we take the first two elements from xs
    helper (x:y:xs) current

    --if they are next numbers we take them from xs and we append them to current
    | x + 1 == y = helper xs (current ++ [x,y])

    -- if they are not next to each other we append the first humber to the curent and we return the next element from xs
    | otherwise = (current ++ [x]) : helper (y:xs) []