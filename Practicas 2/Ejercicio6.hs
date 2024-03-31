--Shaina Alexandra Xochitiotzi Rojas
import Data.Char (ord, chr)

-- Ord char -> num  
--Chr -> num -> char

cifrarCesar :: String -> String
cifrarCesar [] = []
cifrarCesar (x:xs)
    |ord x > 64 && ord x < 85 = chr (ord x + 6) : cifrarCesar xs
    |ord x > 84 && ord x < 91 = chr (ord x - 20) : cifrarCesar xs
    |otherwise = "Caracter invalido"

descifrarCesar :: String -> String
descifrarCesar [] = []
descifrarCesar (x:xs)
    |ord x > 70 && ord x < 91 = chr (ord x - 6) : descifrarCesar xs
    |ord x > 64 && ord x < 71 = chr (ord x + 20) : descifrarCesar xs