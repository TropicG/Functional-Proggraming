main :: IO()
main = do
    print $ addOneNPA 5 == 6
    print $ addsOneXsPA [1,2,3] == [2,3,4]
    print $ sqPlusOne 5 == 26




--adds 1 to every element in the list
addsOneXsPA :: [Int] -> [Int]
addsOneXsPA = map (+1)

--adds one to the argument
addOneNPA :: Int -> Int
addOneNPA = (+1)

--squares the number and then adds 1 to it
sqPlusOne :: Int -> Int
sqPlusOne = (+1) . (^2)