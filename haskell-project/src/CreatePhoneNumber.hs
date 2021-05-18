module CreatePhoneNumber where

createPhoneNumberHelper :: [Int] -> String
createPhoneNumberHelper xs = foldr (++) "" (map show xs)

createPhoneNumber :: [Int] -> String
createPhoneNumber xs = let firstPart  = createPhoneNumberHelper (take 3 xs)
                           secondPart = createPhoneNumberHelper (take 3 (drop 3 xs))
                           thirdPart  = createPhoneNumberHelper (drop 6 xs)
                       in "(" ++ firstPart ++ ") " ++ secondPart ++ "-" ++ thirdPart

