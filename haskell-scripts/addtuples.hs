addTuples :: (Int, Int) -> (Int, Int) -> (Int, Int)
addTuples t1 t2 = (fst t1 + fst t2,snd t1 + snd t2)

addTuples' :: (Int, Int) -> (Int, Int) -> (Int, Int)
addTuples' (x1,y1) (x2,y2) = (x1 + x2, y1 + y2)

