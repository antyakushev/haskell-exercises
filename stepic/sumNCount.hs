sum'n'count :: Integer -> (Integer, Integer)
sum'n'count 0 = (0,1)
sum'n'count x = (sum,count) where
  x' = abs x
  sum = sumd x' 0
  count = cd x' 0
  sumd 0 acc = acc
  sumd x' acc = sumd (div x' 10) (acc + (mod x' 10))
  cd 0 acc = acc
  cd x' acc = cd (div x' 10) (acc + 1)
