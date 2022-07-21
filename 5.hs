-- Problem 5

-- 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

-- What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

main =
    putStrLn "" 
    
--multiplesOf = head (filter (\x -> x `mod` 2 == 0) (filter (\x -> x `mod` 3 == 0) (filter (\x -> x `mod` 4 == 0) (map (* 5) [1..])) ))

getMultiples n = map (* n) [1..]

applyFilters (x:xs) (y:ys) = applyFilters xs (filter (\w -> w `mod` x == 0) (y:ys))

smallestMultiple n = head ( applyFilters [n-1 ..1] (getMultiples n) )

--smallestMultiple n = head (getMultiples n) 
