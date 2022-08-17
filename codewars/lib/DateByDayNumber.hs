module DateByDayNumber where

import Data.Time.Calendar.MonthDay

convertMonth :: Int -> String
convertMonth 1 = "January"
convertMonth 2 = "February"
convertMonth 3 = "March"
convertMonth 4 = "April"
convertMonth 5 = "May"
convertMonth 6 = "June"
convertMonth 7 = "July"
convertMonth 8 = "August"
convertMonth 9 = "September"
convertMonth 10 = "October"
convertMonth 11 = "November"
convertMonth 12 = "December"
convertMonth _ = error "not a valid month"

getDay :: Int -> Bool -> String
getDay d isLeap = month ++ ", " ++ day
  where
    monthDay = dayOfYearToMonthAndDay isLeap d
    month = (convertMonth . fst) monthDay
    day = (show . snd) monthDay
