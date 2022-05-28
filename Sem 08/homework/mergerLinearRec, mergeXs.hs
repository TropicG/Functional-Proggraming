
import Data.List

--checks if a given number is inside the element
inside :: [Int] -> Int -> Bool
inside xs elem

    --if the last element of the list is not == to the elem we return False
    | (length xs) == 1 && elem /= head xs = False

    --if the head of the list is equal to the elem we return True
    | (head xs) == elem = True

    --else we return the rest of the list
    | otherwise = inside (tail xs) elem

mergerLinearRec :: [Int] -> [Int] -> [Int]

--end of recursion if the second list is empty; we sort the first list and returns it
mergerLinearRec xs [] = (sort xs)
mergerLinearRec xs xss 

    --if the head of the second list is not inside the first list, we return the function with this element added to the first list
    | not (inside xs (head xss)) = mergerLinearRec ((head xss):xs) (tail xss)
    | otherwise = mergerLinearRec xs (tail xss)


mergeXs :: [Int] -> [Int] -> [Int]
--end of recursion
mergeXs xs [] = (sort xs)
mergeXs xs (x:xss) = if inside xs x then mergeXs xs xss else mergeXs (x:xs) xss