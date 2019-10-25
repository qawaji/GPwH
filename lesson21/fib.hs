-- from 8.2
-- fastFib n1 n2 counter
fastFib _ _ 0 = 0
fastFib _ _ 1 = 1
fastFib _ _ 2 = 1
fastFib x y 3 = x + y
fastFib x y c = fastFib (x + y) x (c - 1)

fib n = fastFib 1 1 n

-- 21.2
main :: IO ()
main = do
  putStrLn "enter the number"
  n <- getLine
  let result = fib (read n)
  putStrLn ("fib(" ++ n ++ ") = " ++ show result)