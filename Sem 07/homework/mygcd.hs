main :: IO()
main = do
    print $ myGCD 5 10 == 5





myGCD :: Int -> Int -> Int
myGCD a b = if a==b then a else if a>b then myGCD (a-b) b else myGCD a (b -a)