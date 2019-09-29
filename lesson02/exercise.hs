inc :: Int -> Int
inc n = n + 1

double :: Num a => a -> a
double n = n * 2

square :: Num a => a -> a
square n = n ^ 2

q2_3 :: Int -> Int
q2_3 n | even n = n - 2
       | otherwise = 3 * n + 1
       
