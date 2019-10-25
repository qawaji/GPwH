import qualified Data.Map as Map

-- 21.1
helloPerson :: String -> String
helloPerson name = "Hello" ++ " " ++ name ++ "!"

nameData :: Map.Map Int String
nameData = Map.fromList [(1, "Shinichi"), (2, "Kanna"), (3, "Rio"), (4, "Michiko")]

maybeMain :: Maybe String
maybeMain = do
  name <- Map.lookup 1 nameData
  return (helloPerson name)