module UnluckyDays where

import Data.Time (Day, dayOfWeek, fromGregorian)

isUnluckyDay :: Day -> Int
isUnluckyDay d
  | show (dayOfWeek d) == "Friday" = 1
  | otherwise = 0

getDay :: Integer -> Int -> Day
getDay y m = fromGregorian y m 13

unluckyDays :: Integer -> Int
unluckyDays y = checkYear 1 0
  where
    checkYear m ud
      | m > 12 = ud
      | otherwise = checkYear (m + 1) (ud + isUnluckyDay (getDay y m))
