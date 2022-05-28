
type Vector = (Float, Float, Float)

crossProduct :: Vector -> Vector -> Vector
crossProduct (a1,a2,a3) (b1,b2,b3) = ( (a2 * b3) - (a3 * b2), (a3 * b1) - (a1 * b3), (a1 * b2) - (a2 * b1))

magnitude :: Vector -> Float
magnitude (x,y,z) = sqrt( (x * x) + (y * y) + (z * z) )
