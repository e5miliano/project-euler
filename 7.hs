-- Problem 7

-- By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

-- What is the 10 001st prime number?

main =
    print (last (generatePrimes 10001))

isPrime n = not (any (\x -> n `mod` x == 0) [2..n-1])

generatePrimes n = take n (filter isPrime [2..])



