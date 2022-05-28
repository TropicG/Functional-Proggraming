
addN :: [Int] -> Int -> [Int]
addN xs num = map (+ num) xs

sqAddN :: [Int] -> Int -> [Int]
sqAddN xs num = ( map(^2) (map (+ num) xs)) 

divByN :: [Int] -> Int -> [Double]
divByN xs num = map (/ num) xs

filterByN :: [Int] -> Int -> [Int]
filterByN xs num = [x | x <- [head xs..last xs], x >= num]