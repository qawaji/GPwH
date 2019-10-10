-- 14.1
data SixSideDie' = S1' | S2' | S3' | S4' | S5' | S6'
  deriving (Show, Enum)

instance Eq SixSideDie' where
  (==) a b = fromEnum a == fromEnum b

instance Ord SixSideDie' where
  compare a b = fromEnum a `compare` fromEnum b

-- 14.2
data FiveSideDie = Side1 | Side2 | Side3 | Side4 | Side5
  deriving (Show, Eq, Ord, Enum)

class (Eq a, Enum a) => Die a where
  roll :: Int -> a

instance Die FiveSideDie where
  roll n = toEnum (n `mod` 5)