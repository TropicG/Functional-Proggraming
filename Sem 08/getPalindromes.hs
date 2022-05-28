main :: IO()
main = do 
    print $ getPalindromes 132465 




rev :: Int -> Int
rev n = read $ reverse $ show n

getPalindromes:: Int -> Int 
getPalindromes x = (head [y | y <- [2..x], y == rev y]) + (last [y | y <- [2..x], y == rev y] )