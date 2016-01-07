{-
Что произойдет при попытке загрузить данный модуль в GHCi?

 Все пройдет нормально
·Произойдет ошибка из-за несовпадения типа аргумента и ожидаемого типа функции
 Произойдет ошибка из-за неопределенности при выборе функции
-}

module Test where
import Data.List hiding (union)
import Data.Set

myUnion [] ys = ys
myUnion xs ys = union xs ys
