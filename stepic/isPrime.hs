isPrime :: Integer -> Bool
isPrime n = h n 2 where
  h n b
    | b > (round $ sqrt $ fromIntegral n) = True
    | n `mod` b == 0 = False
    | otherwise = h n (b+1)
