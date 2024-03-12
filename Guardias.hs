clasTr :: Int -> Int -> Int -> String
clasTr a b c 
            | a == b && b == c = "Equilatero"
            | a == b || a == c || b == c = "Isoceles"
            | otherwise = "Escaleno"

