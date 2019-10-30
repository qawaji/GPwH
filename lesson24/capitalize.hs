-- exercise 24.2 
import System.IO
import System.Environment
import qualified Data.Text as T
import qualified Data.Text.IO as TI
import Data.Char

captalize :: T.Text -> T.Text
captalize = T.map toUpper

main :: IO ()
main = do
  arg <- getArgs
  let filename = head arg
  input <- TI.readFile filename
  TI.writeFile filename (captalize input)