--Shaina Alexandra Xochitiotzi Rojas
listaSinMultiplos :: [Int] -> Int -> [Int]
listaSinMultiplos [] _ = []
listaSinMultiplos (x:xs) y
    |x `mod` y == 0 = listaSinMultiplos xs y
    |otherwise = x : listaSinMultiplos xs y