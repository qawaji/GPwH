-- 7.1
myTail (x:xs) = xs
myTail [] = []

-- 7.2
myGCD a 0 = a
myGCD a b = myGCD b (a `mod` b)