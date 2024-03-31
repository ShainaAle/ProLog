-- Shaina Alexandra Xochitiotzi Rojas
meses1= [4, 6, 9, 11]
meses2=[1, 3, 5, 7, 8, 10, 12]
dias1 = [1..30]
dias2 = [1..28]
dias22= [1..29]
dias3 = [1..31]

isDateValid :: Int -> Int -> Int -> Bool
isDateValid d m y
    |(m `elem` meses1) && (d `elem` dias1) = True
    |m == 2 && esBisiesto y && d `elem` dias22 = True
    |m == 2 && d `elem` dias2 = True 
    |(m `elem` meses2) && (d `elem` dias3) = True
    |otherwise = False


esBisiesto :: Int -> Bool
esBisiesto a
    |mod a 400 == 0 = True
    |mod a 4 == 0 = True
    |otherwise = False
