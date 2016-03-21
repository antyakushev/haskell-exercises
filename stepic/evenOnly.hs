evenOnly :: [a] -> [a]
evenOnly = (\(fst,_,_) -> fst) . foldr (f) ([],[],True) where
    f a ~(xs,ys,True) = (a:xs,ys,False)
    f a ~(xs,ys,_) = (xs,a:ys,True)

