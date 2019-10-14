-- 16.1
type FirstName = String
type LastName = String
type MiddleName = String

data Name = Name FirstName LastName
          | NameWithMiddle FirstName MiddleName LastName
          | TwoInitialsWithLast Char Char LastName
          | FirstNameWithTwoInits FirstName Char Char

data Creator = AuthorCreator Author | ArtistCreator Artist

data Author = Author Name

data Artist = Person Name | Band String

data Book = Book {
  author :: Creator
  , isbn :: String
  , bookTitle :: String
  , bookYear :: Int
  , bookPrice :: Double
}

data VinylRecord = VinylRecord {
  artist :: Creator
  , recordTitle :: String
  , recordYear :: Int
  , recordPrice :: Double
}

data CollectibleToy = CollectibleToy {
  toyName :: String
  , toyDescription :: String
  , toyPrice :: Double

}

data Pamphlet = Pamphlet {
  pamphletTitle :: String
  , pamphletDescription :: String
  , address :: Int
}

data StoreItem = BookItem Book 
               | RecordItem VinylRecord
               | ToyItem CollectibleToy
               | PamphletItem Pamphlet

price :: StoreItem -> Double               
price (BookItem book)         = bookPrice book
price (RecordItem record)     = recordPrice record
price (ToyItem toy)           = toyPrice toy
price (PamphletItem pamphlet) = 0

-- 16.2
data Shape = Circle Double | Square Double | Rectangle Double Double

area :: Shape -> Double
area (Circle r) = r * r * pi
area (Square w) = w * w
area (Rectangle w h) = w * h

periphery :: Shape -> Double
periphery (Circle r) = 2 * r * pi
periphery (Square w) = 4 * w
periphery (Rectangle w h) = 2 * (w + h)