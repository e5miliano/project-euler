-- Problem 12

-- What is the first triangle number to have over five hundred divisors?


main =
    print (fst (head (take 1 (triangleMinDivisors 500))))
       

triangleNumbers = map (\ x -> sum[1..x]) [1..]

getDivisors n = filter (\x -> (n `mod` x) == 0) [1..n]

getDivisorsTuple n = (n, length (getDivisors n)) 

triangleTuples = map getDivisorsTuple triangleNumbers

triangleTuplesN n = map getDivisorsTuple (take n triangleNumbers) 

triangleMinDivisors n = filter (\x -> snd x > n) triangleTuples 