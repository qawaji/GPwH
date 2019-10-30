-- exercise 24.1
import System.Environment
import System.IO
import qualified Data.Text as T
import qualified Data.Text.IO as TI

main :: IO ()
main = do
  args <- getArgs
  let src = args !! 0
      dst = args !! 1
  srcContents <- TI.readFile src 
  TI.writeFile dst srcContents
