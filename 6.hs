-- Problem 6

-- Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

main =
    print (differenceOfSquares 100)



squareOfSum [] = 0
squareOfSum xs = sum xs ^ 2

sumOfSquares [] = 0
sumOfSquares xs = foldr (\ x -> (+) (x ^ 2)) 0 xs

differenceOfSquares n = squareOfSum[1..n] - sumOfSquares[1..n]

