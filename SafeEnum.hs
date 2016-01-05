{-
Реализуйте класс типов

class SafeEnum a where
  ssucc :: a -> a
  spred :: a -> a
обе функции которого ведут себя как succ и pred стандартного класса Enum, однако являются тотальными, то есть не останавливаются с ошибкой на наибольшем и наименьшем значениях типа-перечисления соответственно, а обеспечивают циклическое поведение. Ваш класс должен быть расширением ряда классов типов стандартной библиотеки, так чтобы можно было написать реализацию по умолчанию его методов, позволяющую объявлять его представителей без необходимости писать какой бы то ни было код. Например, для типа Bool должно быть достаточно написать строку

instance SafeEnum Bool
и получить возможность вызывать

GHCi> ssucc False
True
GHCi> ssucc True
False
-}

class (Eq a, Enum a, Bounded a) => SafeEnum a where
  ssucc :: a -> a
  ssucc n
   | n == maxBound = minBound
   | otherwise = succ n 

  spred :: a -> a
  spred n
   | n == minBound = maxBound
   | otherwise = pred n

instance SafeEnum Bool
