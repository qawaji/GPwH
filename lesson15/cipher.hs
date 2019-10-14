module Cipher(
  Cipher(encode,decode)
  ) where

class Cipher a where
  encode :: a -> String -> String
  decode :: a -> String -> String