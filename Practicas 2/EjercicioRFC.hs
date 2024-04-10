import Data.Char (isDigit, isAlphaNum)
import System.Win32 (xBUTTON1)
--Shaina Alexandra Xochitiotzi Rojas 
abc1 = ['A'..'Z']
abc2 = ['a'..'z']
num1 = ['1'..'9']

isAlpha :: Char -> Bool
isAlpha c 
    |c `elem` abc1 = True
    |c `elem` abc2 = True
    |otherwise = False

isDigito :: Char -> Bool
isDigito x
    |x `elem` num1 = True
    |otherwise = False

isAlphaNumeric :: Char -> Bool
isAlphaNumeric x
    |isAlpha x = True
    |isDigito x = True
    |otherwise = False