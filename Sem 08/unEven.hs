main :: IO()
main = do
    print $ sumUnevenLC 5 50 == 621
    print $ sumUnevenLC 50 1 == 625
    print $ sumUnevenLC 564 565 == 565


sumUnevenLC :: Int -> Int -> Int
-- creates a list of numbers between a and be that are odd
sumUnevenLC a b = sum ( [ x | x <- [a..b], mod x 2 /= 0 ] ) 