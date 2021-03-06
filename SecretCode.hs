module SecretCode where

import Data.Char
import Data.Maybe
import Test.HUnit

code :: [(Char, Char)]
code = zip ['a' .. 'z'] cypher ++ zip ['A' .. 'Z'] (map toUpper cypher)
  where
    cypher :: String
    cypher = "thequickbrownfxjmpsvlazydg"

encodeChar :: Char -> Char
encodeChar c = undefined

testEncodeChar =
  runTestTT $
    TestList
      [ encodeChar 'a' ~?= 't',
        encodeChar '.' ~?= '.'
      ]

encodeLine :: String -> String
encodeLine = undefined

testEncodeLine = runTestTT $ TestList [encodeLine "abc defgh" ~?= "the quick"]

encodeContent :: String -> String
encodeContent = undefined

testEncodeContent =
  runTestTT $
    encodeContent "abc\n defgh\n" ~?= " quick\nthe\n"

encodeFile :: FilePath -> IO ()
encodeFile f = do
  let outFile = f ++ ".code"
  undefined

main :: IO ()
main = do
  putStrLn "What file shall I encode?"
  fn <- getLine
  encodeFile fn
  putStrLn "All done!"
