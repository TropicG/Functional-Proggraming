
type Rat = (Int, Int)


normalize :: Rat -> Rat
normalize (x,0) = error "cant divide by zero"
normalize (x,y) = let d = gcd x y in (div x d, div y d)


normalizeWhere :: Rat -> Rat
normalizeWhere (x,0) = error "cant divide by zero"
normalizeWhere (x,y) = (div x d, div y d)
    where d = gcd x y
