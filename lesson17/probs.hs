import Data.Semigroup

-- 17.2
newtype Events = Events [String]
newtype Probs = Probs [Double]

data PTable = PTable Events Probs

createPTable :: Events -> Probs -> PTable
createPTable (Events events) (Probs probs) = PTable (Events events) (Probs normalizedProbs)
  where totalProbs = sum probs
        normalizedProbs = map (\x -> x / totalProbs) probs

showPair :: String -> Double -> String
showPair event prob = mconcat [event, "|", show prob, "\n"]

instance Show PTable where
  show (PTable (Events events) (Probs probs)) = mconcat pairs
    where pairs = zipWith showPair events probs

cartCombine :: (a -> b -> c) -> [a] -> [b] -> [c]
cartCombine func l1 l2 = zipWith func newL1 cycledL2
  where nToAdd = length l2
        repeatedL1 = map (take nToAdd . repeat) l1
        newL1 = mconcat repeatedL1
        cycledL2 = cycle l2

instance Semigroup Events where
  (<>) (Events e1) (Events e2) = Events $ cartCombine (\x y -> mconcat [x, "-", y]) e1 e2

--combineEvents :: Events -> Events -> Events
--combineEvents e1 e2 = cartCombine combiner e1 e2
--  where combiner = (\x y -> mconcat [x, "-", y])

instance Semigroup Probs where
  (<>) (Probs p1) (Probs p2) = Probs $ cartCombine (*) p1 p2

--combineProbs :: Probs -> Probs -> Probs
--combineProbs p1 p2 = cartCombine (*) p1 p2

instance Semigroup PTable where
  (<>) ptable1 (PTable (Events []) (Probs [])) = ptable1
  (<>) (PTable (Events []) (Probs [])) ptable2 = ptable2
  (<>) (PTable e1 p1) (PTable e2 p2) = createPTable newEvents newProbs
    where newEvents = e1 <> e2
          newProbs = p1 <> p2

instance Monoid PTable where
  mempty = PTable (Events []) (Probs [])
  mappend = (<>)

coin :: PTable
coin = createPTable (Events ["heads", "tails"]) (Probs [0.5, 0.5])

spinner ::PTable
spinner = createPTable (Events ["red", "blue", "green"]) (Probs [0.1, 0.2, 0.7])