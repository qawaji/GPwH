import Data.Semigroup

data Color = Red | Yellow | Blue | Green | Purple | Orange | Brown | Transparent deriving (Show, Eq)

instance Semigroup Color where
  (<>) Transparent c = c
  (<>) c Transparent = c
  (<>) Red Blue = Purple
  (<>) Blue Red = Purple
  (<>) Yellow Blue = Green
  (<>) Blue Yellow = Green
  (<>) Yellow Red = Orange
  (<>) Red Yellow = Orange
  (<>) a b | a == b = a
           | all (`elem` [Red, Blue, Purple]) [a, b] = Purple
           | all (`elem` [Blue, Yellow, Green]) [a, b] = Green
           | all (`elem` [Yellow, Red, Orange]) [a, b] = Orange
           | otherwise = Brown

instance Monoid Color where
  mempty = Transparent
  mappend = (<>)