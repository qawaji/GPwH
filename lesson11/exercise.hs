-- 11.1
-- filter :: (a -> Bool) -> [a] -> [a]

-- 11.2
-- safeTail 空リストのときには空リストを返す
safeTail :: [a] -> [a] 
safeTail [] = []
safeTail (_:xs) = xs

-- safeHead 空リストのときに空リストを返す
-- safeHead :: [a] -> a
-- safeHead [] = []
-- safeHead (x:_) = x
-- 空リストの場合とそうでない場合で戻り値の型が異なってしまうので定義できない

-- 11.3
myFoldl :: (a -> b -> a) -> a -> [b] -> a
myFoldl f init [] = init
myFoldl f init (x:xs) = myFoldl f newInit xs
  where newInit = f init x

