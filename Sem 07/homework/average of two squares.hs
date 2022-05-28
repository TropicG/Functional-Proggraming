main :: IO()
main = do
    print $ sqAvg 5 0 == 12.5
    print $ sqAvg 10 13 == 134.5 

sqAvg :: Float -> Float -> Float
sqAvg x y = ( (x*x) + (y*y) ) / 2
