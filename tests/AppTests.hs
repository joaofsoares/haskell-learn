import App.HelloWorld (printHelloWorld)
import Data.List ()
import Data.Ord ()
import Test.Tasty (TestTree, defaultMain, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))

main :: IO ()
main = defaultMain tests

tests :: TestTree
tests = testGroup "Tests" [unitTests]

unitTests :: TestTree
unitTests =
  testGroup
    "Unit tests"
    [ testCase "Hello World Test" $
        printHelloWorld "Haskell" `compare` "Hello World, Haskell" @?= EQ,
      testCase "List comparison (same length)" $
        [1, 2, 3] `compare` [1, 2, 2] @?= LT
    ]
