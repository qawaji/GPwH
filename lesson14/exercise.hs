-- 14.1
data SixSideDie' = S1' | S2' | S3' | S4' | S5' | S6'
  deriving (Show, Enum)

instance Eq SixSideDie' where
  (==) a b = fromEnum a == fromEnum b

instance Ord SixSideDie' where
  compare a b = fromEnum a `compare` fromEnum b

