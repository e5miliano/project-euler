main =
    --print ( division 7 6 ) >>
    --print ( filtrarLista y ) >>
    --print ( map multiplytuples allTuples  ) >>
    --print ( rightTriangles ) >>
    --print ( rightTriangles24 ) >>
   
    print (sumMult5and3)
    
    --print (fib4millionSumt) 


--1

sumMult5and3 = sum [ x | x <- [1..1000], x `mod` 3 == 0, x `mod` 5 == 0]   


--2

fib 0 = 0
fib 1 = 1
fib n = fib n + fib (n-1)

fib4millionSumt = sum [ fib x | x <- [0..4000000], even (fib x)]


factorial 0 = 1
factorial n = n * factorial (n - 1)

y = 9
pairs = [x*2 | x <- [1..10], x*2 >= 12]

z = [ x | x <- [10..20], x /= 13, x /= 15, x /= 19] 

w = [ x*y | x <- [2,5,10], y <- [8,10,11]] 

allTuples = [(1, 2), (8, 11), (4, 5)]

multiplytuples (a,b) = a * b

division x y = div x y + 10


rightTriangles = [ (a,b,c) | c <- [1..10], b <- [1..10], a <- [1..10], a^2 + b^2 == c^2 ]   
rightTriangles24 = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24]  


multiplicarLista x = map (*x) [1..10]

filtrarLista x = filter (>x) [62,3,25,7,1,9]

dividirLista x = map (/x) [13,24,52,42]

doubleSmallNumber :: (Ord a, Num a) => a -> a
doubleSmallNumber x = if x > 100 then x else x*2  

--let pairsList = [x | x <- [1..50], x `mod` 2 == 0]


