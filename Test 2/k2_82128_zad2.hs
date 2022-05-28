
data Stock = Stock String Int

getCategory :: Stock -> Char
getCategory (str, int) = (str!!0)

getBooks :: Stock -> Int
getBooks (str, int) = int

stocklist :: [Stock] -> [Char] -> [(Char, Int)]
stocklist stocks categories = helper stocks categories [] 0 (categories!!0) 0

helper:: [Stock] -> [Char] -> [(Char, Int)] -> Int -> Char -> Int -> [(Char, Int)]
helper stocks categories books index currentSym currentBooks
    | index == (length stocks) && length categories == 1 = books
    | index == length stocks = helper stocks (tail categories) ((currentSym,currentBooks):books) 0 (categories!!1) 0
    | getCategory (stocks!!index) == currentSym = helper stocks categories books (index+1) currentSym (currentBooks + (getBooks (stocks!!index)) )
    | otherwise = helper stocks categories books (index+1) currentSym currentBooks