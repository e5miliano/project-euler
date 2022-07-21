




filterPrime [] = 0

filterPrime (x:xs) = p : filterPrime [x | x <- xs, x `mod` w /= 0]

