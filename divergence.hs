--Отметьте функции, которые не могут привести к расходимости ни на каком корректном наборе аргументов.

foo a = a

bar = const foo

baz x = const True --ok

quux = let x = x in x 

corge = 10 --ok

grault x 0 = x
grault x y = x

garply = grault 'q'

waldo = foo

-- Try to pass undefined to each function
