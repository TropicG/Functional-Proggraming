--returns the tuple with all max and mins elements from the list 
combine :: [(Int, Int)] -> (Int, Int)
combine xs = helper xs (0,0)

--takes the list of tuples with and empty tuple and returns a tuple
helper:: [(Int, Int)] -> (Int, Int) -> (Int, Int)
--end of recursion, if we are at the end of the list we return the tuple
helper [] pair = pair
--takes the first tuple from the lsit and invokes helper with the rest of the list
--and in fst of the argument tuple we add the min of the elements from the tuple from the list
--and in snd we get the max element from the tuple of the list
helper (x:xs) pair = helper xs ( ( (fst pair) * 10 ) + (min (fst x) (snd x)) , ( (snd pair) * 10 ) + (max (fst x) (snd x)) )