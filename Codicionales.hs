

    {- Condicional tipo  ==> If <=== -}

    {-
    
    Guardias
    
    
    
    -}


    {-
            Listas de compresion
            ----------------
            Que pertenece:
            <-
            ----------------
            [x^2 | ]
    -}


    {-
    
    
    
    -}


    pyths :: Int -> [(Int,Int,Int)]
    pyths n = [(x,y,z) | x <-[1..n],y <-[1..n],z <-[1..n], z^2 == x^2 + y^2]
