data FourLetterAlphabet = L1 | L2 | L3 | L4 deriving (Show, Enum, Bounded)

largestCharNumber :: Int
largestCharNumber = fromEnum (maxBound :: Char)

rotN :: (Bounded a, Enum a) => Int -> a -> a
rotN alphabetSize c = toEnum rotation
  where halfAlphabet = alphabetSize `div` 2
        offset = fromEnum c + halfAlphabet
        rotation = offset `mod` alphabetSize

rotChar :: Char -> Char
rotChar charToEncrypt = rotN sizeOfAlphabet charToEncrypt
  where sizeOfAlphabet = 1 + largestCharNumber

fourLetterMessage :: [FourLetterAlphabet]
fourLetterMessage = [L1,L3,L4,L1,L1,L2]

fourLetterEncorder :: [FourLetterAlphabet] -> [FourLetterAlphabet]
fourLetterEncorder vals = map rot4l vals
  where alphaSize = 1 + fromEnum (maxBound :: FourLetterAlphabet)
        rot4l = rotN alphaSize