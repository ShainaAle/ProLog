-- Shaina Alexandra Xochitiotzi Rojas

esBisiesto :: Int -> Bool
esBisiesto a
    |mod a 400 == 0 = True
    |mod a 4 == 0 = True
    |otherwise = False
