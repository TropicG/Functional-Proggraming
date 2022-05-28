isImage :: [Int] -> [Int] -> (Bool, Int)
isImage (x:xs) (y:xss) = helper xs xss (y - x)

helper :: [Int] -> [Int] -> Int -> (Bool, Int) 
helper [] [] diff = (True, diff)
helper (x:xs) (y:xss) diff 
    | (y - x) == diff = helper xs xss diff
    | (y - x) /= diff = (False, 0)isImage :: [Int] -> [Int] -> (Bool, Int)
