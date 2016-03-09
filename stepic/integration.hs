{-
Реализуйте функцию, находящую значение определённого интеграла от заданной функции ff на заданном интервале [a,b][a,b] методом трапеций. (Используйте равномерную сетку; достаточно 1000 элементарных отрезков.)

integration :: (Double -> Double) -> Double -> Double -> Double
integration f a b = undefined
GHCi> integration sin pi 0
-2.0
Результат может отличаться от -2.0, но не более чем на 1e-4.
-}


integration :: (Double -> Double) -> Double -> Double -> Double
integration f a b = integ f a b 1000 where
	integ f a b 0 = 0
	integ f a b n = h * (f (a) + f (a + h)) / 2 + integ f (a + h) b (n - 1) where h = (b - a) / n
