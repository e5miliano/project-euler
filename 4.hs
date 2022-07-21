-- Problem 4

-- A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

-- Find the largest palindrome made from the product of two 3-digit numbers.

main =
    putStrLn "" 
  

isPalindrome x = x == reverse x


reverseInt x | x < 0     = 0 - (read . reverse . tail . show $ x)
             | otherwise = read . reverse . show $ x
