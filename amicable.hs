--Problem 21

--Evaluate the sum of all the amicable numbers under 10000.

properDivisors n = filter (\x -> n `mod` x == 0) [1 .. (n-1)]

divs = zip [1..2000] $ map (sum . properDivisors) [1..2000]
pairs = [(n, m) | (n, nd) <- divs, (m, md) <- divs, n < m, nd == m, md == n]


main =
    print pairs

