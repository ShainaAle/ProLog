--Shaina Alexandra Xochitiotzi Rojas

clasTr :: Int -> Int -> Int -> String
clasTr a b c 
            | a == b && b == c = "Equilatero"
            | a == b || a == c || b == c = "Isoceles"
            | otherwise = "Escaleno"

diaSemana :: Int -> String
diaSemana n
    | n == 1 = "Lunes"
    | n == 2 = "Martes"
    | n == 3 = "Miercoles"
    | n == 4 = "Jueves"
    | n == 5 = "Viernes"
    | n == 6 = "Sabado"
    | n == 7 = "Domingo"
    | otherwise = "Dia invalido"