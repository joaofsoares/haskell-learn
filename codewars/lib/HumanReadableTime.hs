module HumanReadableTime where

formatUnit :: String -> String
formatUnit un = if length un == 1 then "0" ++ un else un

formatTime :: String -> String -> String -> String
formatTime [] _ _ = ""
formatTime value t res
  | t == "hours" = formatUnit value ++ drop 2 res
  | t == "minutes" = take 3 res ++ formatUnit value ++ drop 5 res
  | otherwise = take 6 res ++ formatUnit value

calcTime :: Int -> String -> String
calcTime n res
  | n > 3599 =
    let h = div n 3600
     in calcTime (n - (h * 3600)) (formatTime (show h) "hours" res)
  | n > 59 =
    let m = div n 60
     in calcTime (n - (m * 60)) (formatTime (show m) "minutes" res)
  | otherwise = formatTime (show n) "seconds" res

humanReadable :: Int -> String
humanReadable n = calcTime n "00:00:00"
