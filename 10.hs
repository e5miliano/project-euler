-- Problem 10

-- Find the sum of all the primes below two million.

main =
    print (sum (primeGenerator 2000000))

isPrime n = not (any (\x -> n `mod` x == 0) [2..n-1])

primeGenerator n = filter isPrime [2..n]



