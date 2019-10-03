-- 6.1
myRepeat n = cycle [n]

-- 6.2
subseq start end xs = take (end - start) $ drop start xs

-- 6.3
isFirstHalf x ys = x `elem` halfYs
  where halfYs = take (length ys `div` 2) ys