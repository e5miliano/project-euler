-- Problem 4

-- A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

-- Find the largest palindrome made from the product of two 3-digit numbers.

import Data.List (tails, nub, sort, group)

main =
    print ( last (filter isPalindrome (map product (nub (map sort (sequence [[100..1000],[100..1000]] )))) ) )

reverseInt x | x < 0     = negate (read . reverse . tail . show $ x)
             | otherwise = read . reverse . show $ x

isPalindrome x = x == reverseInt x

generatePalindromes n = take n (filter isPalindrome [2..])



