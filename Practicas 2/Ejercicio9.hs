--Shaina Alexandra Xochitiotzi Rojas
import Data.Char (isUpper)
generaAcronimo :: [Char] -> [Char]
generaAcronimo [] = ""
generaAcronimo (x:xs)
    |isUpper x = x : generaAcronimo xs
    |otherwise = generaAcronimo xs

