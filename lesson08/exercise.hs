-- 8.1
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

-- 8.2
-- fastFib n1 n2 counter
fastFib _ _ 0 = 0
fastFib _ _ 1 = 1
fastFib _ _ 2 = 1
fastFib x y 3 = x + y
fastFib x y c = fastFib (x + y) x (c - 1)

fib' n = fastFib 1 1 n

fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)