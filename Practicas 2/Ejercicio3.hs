-- Shaina Alexandra Xochitiotzi Rojas
monthName :: Int -> String
monthName n
            |n == 1 = "Enero"
            |n == 2 = "Febrero"
            |n == 3 = "Marzo"
            |n == 4 = "Abril"
            |n == 5 = "Mayo"
            |n == 6 = "Junio"
            |n == 7 = "Julio"
            |n == 8 = "Agosto"
            |n == 9 = "Septiembre"
            |n == 10 = "Octubre"
            |n == 11 = "Noviembre"
            |n == 12 = "Diciembre"
            |otherwise = "Error"