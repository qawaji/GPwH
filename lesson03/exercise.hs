-- 3.1
simple = (\x -> x)

inc = (\x -> x + 1)
double = (\x -> x * 2)
square = (\x -> x ^ 2)

-- 3.2
counter x = (\x -> x + 1)((\x -> x + 1)((\x -> x) x))