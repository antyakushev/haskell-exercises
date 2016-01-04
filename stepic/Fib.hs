fibonacci :: Integer -> Integer
fibonacci n = helper (signum n) 1 ((-1) * signum n) n

helper sign prev pprev n | n == 0 = pprev + (prev  * sign)
                         | n > 0  = helper sign (prev + pprev) prev (n-1)
                         | n < 0  = helper sign (pprev - prev) prev (n+1)
