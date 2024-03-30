--Shaina Alexandra Xochitiotzi Rojas

--show toma cualquier tipo y devuelve string
--show :: a -> String

suma :: Int -> Int -> String
suma a b 
        | a == b = show a ++ show b
        | otherwise = show (a + b)