-- Problem 3

-- The prime factors of 13195 are 5, 7, 13 and 29.

-- What is the largest prime factor of the number 600851475143 ?



main =
    print (primeFactors 100) 
    

primeFactors n =
  case factors of
    [] -> [n]
    _  -> factors ++ primeFactors (n `div` head factors)
  where factors = take 1 ( filter (\x -> (n `mod` x) == 0) [2 .. n-1])

