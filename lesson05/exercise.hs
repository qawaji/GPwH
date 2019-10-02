-- 5.1
ifEven f n = if even n
             then f n
             else n

ifEvenInc = ifEven (\x -> x + 1)
ifEvenDouble = ifEven (\x -> x * 2)
ifEvenSquare = ifEven (\x -> x ^ 2)
