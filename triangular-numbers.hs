-- Problem 12

-- What is the first triangle number to have over five hundred divisors?


main =
    print ((fst . head . take 1) (triangleMinDivisors 100))
       

divisors n = filter (\x -> (n `mod` x) == 0) [1..n]
triangleNumbers = map (\ x -> sum[1..x]) [1..]
triangleTuples = zip triangleNumbers $ map (length . divisors) triangleNumbers
triangleMinDivisors n = filter (\x -> snd x > n) triangleTuples 
