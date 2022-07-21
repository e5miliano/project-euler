-- Problem 5

-- 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

-- What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

--main =
--    print head(sumOfSquares (map (* 5) [1..])) 
    
--multiplesOf = head (filter (\x -> x `mod` 2 == 0) (filter (\x -> x `mod` 3 == 0) (filter (\x -> x `mod` 4 == 0) (map (* 5) [1..])) ))

--getMultiples n = map (* n) [1..]

filterMod n  = filter (\x -> x `mod` n == 0)

--applyModFilter [] = 0 
applyModFilter n list = applyModFilter n (filterMod n (tail list))


--applyFilters [] [] = 10
--applyFilters [] _ = 10
--applyFilters _ [] = 10
--applyFilters (x:xs) (y:ys) = applyFilters xs (filter (\w -> w `mod` x == 0) (y:ys))

--smallestMultiple =  applyFilters [3,2,1] [1..100]






