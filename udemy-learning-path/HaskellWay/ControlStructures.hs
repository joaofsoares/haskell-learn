myIf :: Bool -> p -> p -> p
myIf True thenFunc elseFunc = thenFunc
myIf False thenFunc elseFunc = elseFunc

main :: IO ()
main =
  let x = 5
   in print $ myIf (x == 5) "is five" "is not five"
