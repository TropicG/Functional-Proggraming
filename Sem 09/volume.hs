
type Cylinder a = (a,a)

volume :: (Floating a) => Cylinder a -> a
volume (r,h) = pi * r * r * h

getVolumes :: (Floating a) => [Cylinder a] -> [a]
getVolumes = map volume