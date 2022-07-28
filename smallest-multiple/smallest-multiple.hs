-- Problem 5

-- 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

-- What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

main =
    print (smallestMultiple 5) 
  

combinedFilters [] = id
combinedFilters (x:xs) = combinedFilters xs . filter (\w -> w `mod` x == 0)

smallestMultiple n = head (combinedFilters (reverse [1..n]) [1..])

