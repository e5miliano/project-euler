-- Problem 9

-- There exists exactly one Pythagorean triplet for which a + b + c = 1000.

-- Find the product abc.

main =
    print specialTriplet

specialTriplet = head [ (a,b,c) | c <- [1..750], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 1000]  