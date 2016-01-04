seqA :: Integer -> Integer
seqA n =
  let seq = 1 : 2 : 3 : zipWith (-) (zipWith (+) (tail (tail seq)) (tail seq)) (map ((*)2) seq) in
  seq !! (fromIntegral n)
