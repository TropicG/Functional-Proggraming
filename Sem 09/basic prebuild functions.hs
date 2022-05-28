

joinFold :: [[a]] -> [a]
joinFold = fold1 (++)

join :: [[a]] -> [a]
join [] = []
join (xs::xss) = xs ++ join xss

concatenate :: [a] -> [a] -> [a]
concatenate [] ys = ys
concatenate (x:xs) ys = x : concatenate xs ys

fromXs :: Int -> [a] -> [a]
fromXs _ [] = []
from0 0 xs = xs
fromXs n (_:xs) = fromXs (n-1) xs

removeFirst :: [a] -> [a]
removeFirst [] = error "Empty list"
removeFirst (_:xs) = xs

firstEl :: [a] -> a
firstEl [] = error "Empty list"
firstEl (x:_) = x

isNull :: [a] -> Bool
isNull [] = True
isNull _ = False