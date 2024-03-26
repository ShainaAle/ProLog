


positions :: Eq a => a ->[a] -> [Int]
positions x xs = 
    [i|(x',i) <- zip xs [0..], x == x']

{-
Cuando se ejecuta muestra:

    ghci> positions 7 [1,2,3,5,7,9,7]
    [4,6]
    
    ghci> positions 'a' "Hola a todos" 
    [3,5]
-} {-  Zip ajusta el tamaño -}
    

{- Ejercicio de contador -}

count :: Char -> String -> Int
count x xs = length [x' | x' <- xs, x ==x']
                            
-- Compara lo que tenemos en xs y si es verdadera la condicion lo guarda en x
--GuardasZip.hs

{-  EJERCICIOS DE PRUEBA   -}

{- A triple (x,y,z) of positive integers is called pythagorean if x2 + y2 = z2.  Using a list comprehension, define a function -}
{-| = tal que -}
pyths :: Int -> [(Int,Int,Int)]
pyths n = [(x,y,z) | x <-[1..n],y <-[1..n],z <-[1..n], z^2 == x^2 + y^2]

{- REGRESA
ghci> pyths 5
[(3,4,5),(4,3,5)]
-}

    