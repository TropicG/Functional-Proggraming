

divideNoPM :: (Integral a) => (a,a) -> (a,a)
divideNoPM p = ( div (fst p) (snd p), mod (fst p) (snd))

dividePM :: (Integral a) => (a,a) -> (a,a)
dividePM (x,y) = (div x y, mod x y)