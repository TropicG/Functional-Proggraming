
matching :: String -> [(Int, Int)]
matching string = helper string 0 [] False []

helper :: String -> Int -> [(Int, Int)] -> Bool -> [Int] -> [(Int, Int)]
helper [] index squareBrackets start remember = squareBrackets
helper string index squareBrackets start remember
    | index == length(string) = squareBrackets
    | string!!index == '[' && start = helper string (index+1) squareBrackets True (index:remember)
    | string!!index == '[' = helper string (index+1) squareBrackets True (index:remember)
    | string!!index == ']' && start = helper string (index+1) ((remember!!0,index):squareBrackets) False (tail remember)
    | string!!index == ']' && not start && (length remember /= 0) = helper string (index+1) ((remember!!0,index):squareBrackets) False (tail remember)
    | otherwise = helper string (index+1) squareBrackets start remember
