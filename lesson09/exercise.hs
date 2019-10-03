import Data.Char

-- 9.1
myElem x ys = (length $ filter (== x) ys) > 0

-- 9.2
isPalindrome :: String -> Bool
isPalindrome xs = text == reverse text
  where noSpace = filter (/= ' ') xs
        text = map toLower noSpace

-- 9.3
harmonic n = foldl (+) 0.0 (take n values)
  where values = map (\x -> 1.0 / x) [1.0, 2.0 ..]