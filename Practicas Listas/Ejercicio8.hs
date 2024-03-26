--Shaina Alexandra Xochitiotzi Rojas

estadoDelAgua :: Double -> String
estadoDelAgua a 
                | a <= 0 = "Solido"
                | a <= 100 = "Liquido"
                | otherwise = "Gaseoso"            