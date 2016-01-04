sum'n'count :: Integer -> (Integer, Integer)
sum'n'count x = (sumd x, countd x) where
  rund 0 f acc = acc
  rund x f acc = rund (div x 10) f (acc + f x)
  rund0 x f = (flip rund) 0
  sumd x = rund0 x (mod x 10)
  countd x = rund0 x 1
