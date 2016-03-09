{-
Реализуйте функцию isPalindrome, которая определеяет, является ли переданный ей список палиндромом.

GHCi> isPalindrome "saippuakivikauppias"
True
GHCi> isPalindrome [1]
True
GHCi> isPalindrome [1, 2]
False
-}

isPalindrome :: Eq a => [a] -> Bool
isPalindrome a = a == reverse a

-- Is it possible to write it without mentioning a explicitly?
