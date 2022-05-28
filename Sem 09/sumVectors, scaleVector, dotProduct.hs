

type Vector a = (a,a,a)

sumVector :: (Num a) => Vector a -> Vector a -> Vector a
sumVector (x1,y1,z1) (x2,y2,z2) = (x1+x2,y1+y2,z1+z2)

scaleVector :: (Num a) => Vector a -> a -> Vector a
scaleVector (x1,y1,z1) s = (x1* s, y1 * s, z1 * s)

dotProduct :: (Num a) => Vector a -> Vector a -> a
dotProduct (x1,y1,z1) (x2,y2,z2) = x1*x2 + y1*y2 + z1*z2