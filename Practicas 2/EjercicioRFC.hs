--Shaina Alexandra Xochitiotzi Rojas 
abc1 = ['A'..'Z']
abc2 = ['a'..'z']
num1 = ['0'..'9']

isAlpha1 :: Char -> Bool
isAlpha1 c 
    |c `elem` abc1 = True
    |c `elem` abc2 = True
    |otherwise = False

isDigito1 :: Char -> Bool
isDigito1 x
    |x `elem` num1 = True
    |otherwise = False

isAlphaNumeric1 :: Char -> Bool
isAlphaNumeric1 x
    |isAlpha1 x = True
    |isDigito1 x = True
    |otherwise = False

isForRFCFisica :: String -> Bool
isForRFCFisica rfc =
    length rfc == 13 &&
    all isAlpha1 (take 4 rfc) &&
    all isDigito1 (take 6 (drop 4 rfc)) &&
    all isAlphaNumeric1 (take 4 (drop 10 rfc))


isForRFCMoral :: String -> Bool
isForRFCMoral rfc =
    length rfc == 12 &&
    all isAlpha1 (take 3 rfc) &&
    all isDigito1 (take 6 (drop 3 rfc)) &&
    all isAlphaNumeric1 (take 3 (drop 9 rfc))

isDateRFCValid :: String -> Bool
isDateRFCValid date =
    length date == 6 &&
    isDateValid year month day
    where
        year = if y >= 23 then 1900 + y else 2000 + y
        y = stringToInt (take 2 date)
        month = stringToInt (take 2 (drop 2 date))
        day = stringToInt (take 2 (drop 4 date))

isDateValid :: Int -> Int -> Int -> Bool
isDateValid year month day
    | month >= 1 && month <= 12 = case month of
        2 -> if esBisiesto year then day >= 1 && day <= 29 else day >= 1 && day <= 28
        _ -> day >= 1 && day <= maxDays
    | otherwise = False
    where
        maxDays = if month `elem` [4, 6, 9, 11] then 30 else 31

esBisiesto :: Int -> Bool
esBisiesto year
    | mod year 400 == 0 = True
    | mod year 4 == 0 && mod year 100 /= 0 = True
    | otherwise = False

stringToInt :: String -> Int
stringToInt str = read str :: Int

isRFCValid :: String -> (Bool, String)
isRFCValid rfc
    |isForRFCFisica rfc == True && isDateRFCValid date1 == True = (True,"Persona Física") 
    |isForRFCFisica rfc == True && isDateRFCValid date1 == False = (False,"Error en fecha")
    |isForRFCMoral rfc == True && isDateRFCValid date2 == True = (True,"Persona Moral") 
    |isForRFCMoral rfc == True && isDateRFCValid date2 == False = (False,"Error en fecha")
    |otherwise = (False, "Error en el formato")
    where
        date1 = take 6 (drop 4 rfc)
        date2 = take 6 (drop 3 rfc)
