class KnownToGork a where
    stomp :: a -> a
    doesEnrageGork :: a -> Bool

class KnownToMork a where
    stab :: a -> a
    doesEnrageMork :: a -> Bool

class (KnownToGork a, KnownToMork a) => KnownToGorkAndMork a where
    stompOrStab :: a -> a
    stompOrStab x 
        | doesEnrageMork x == True && doesEnrageGork x == True
          = (stomp . stab) x
        | doesEnrageMork x == True 
          = stomp x
        | doesEnrageGork x == True
          = stab x
        | otherwise = x
