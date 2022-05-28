

toTuples :: (Num a) => [a] -> [a] -> [(a,a)]
toTuples [] [] = []
toTuples (x:xs) [] = (x, 0) : toTuples xs []
toTuples [] (y:ys) = (y,0) : toTuples [] ys
toTuples (x:xs) (y:ys) = (x,y) : toTuples xs ys


