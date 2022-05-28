main :: IO()
main = do
    print $ isInside 5 1 4 == True
    print $ isInside 5 2 10 == False

    print $ isInsideList 5 1 4 == True
    print $ isInsideList 5 2 10 == False

    print $ isInsideLambda 5 1 4 == True
    print $ isInsideLambda 5 2 10 == False


-- gets the smallest element compares it to x and takes the biggest element and compares it to x
isInside :: Int-> Int ->  Int -> Bool
isInside a b x = min a b <= x && max a b >= x

--creates a list with all the elems from a to b and checks if x is inside the list
isInsideList :: Int -> Int -> Int -> Bool
isInsideList a b x = elem x [min a b .. max a b]

--exactly like isInside but it is an anonymous function
isInsideLambda :: Int->Int->Int -> Bool
isInsideLambda a b = (\ x -> min a b <= x && max a b >= x)