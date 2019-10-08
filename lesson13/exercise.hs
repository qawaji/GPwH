-- 13.1 Word ?
-- 実装している型クラスは Int と同じ
-- minBound :: Word = 0
-- maxBound :: Word = 18446744073709551615
-- maxBound :: Int  =  9223372036854775807
-- であるので、おそらく Word は符号なし整数

-- 13.2 Enum ?
-- Enum と Bounded のインスタンスである Int
inc :: Int -> Int
inc x = x + 1
-- と succ の違いは？
-- maxBound 付近での違いがあるのでは
-- succ maxBound :: Int は Exception がとぶ
-- inc maxBound は minBound :: Int になる

-- 13.3
-- maxBound との比較が必要なので Eq のインスタンスである必要がある
cycleSucc :: (Bounded a, Enum a, Eq a) => a -> a
cycleSucc n 
  | n == maxBound = minBound
  | otherwise     = succ n
