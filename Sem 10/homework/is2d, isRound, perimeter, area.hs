data Shape a = Circle a | Rectangle a a | Triangle a a a | Cylinder a a
    deriving (Show)

is2D :: Shape a -> Bool
is2D (Cylinder _ _) = False
is2D _ = True

isRound :: Shape a -> Bool
isRound (Cylinder _ _) = True
isRound (Circle _) = True
isRound _ = False

perimeter :: (Num a, Floating a) => Shape a -> a
perimeter (Circle r) = 2*pi*r
perimeter (Rectangle w h) = 2 * w + 2 * h
perimeter (Triangle x y z) = x + y + z
perimeter (Cylinder r h) = 4 * r + 2 * h

area :: (Num a, Floating a) => Shape a -> a
area (Circle r) = pi * r * r 
area (Rectangle w h) = w * h
area (Triangle x y z) = let p = (x + y + z) / 2 in sqrt $ p * (p - x) * (p - y) * (p - z)
area (Cylinder r h) = 2 * pi * r * h + 2 * pi * r * r