--Listas infinitas
listaInfinita1 = [1,2..]
-- take n, para tomar n valores de la lista

--Uso cycle: cicla una lista
listaInfinita2 = cycle [1,2,3]
lol= cycle "LOL"
listaCi = cycle[[1,2,3],[4,5]] 

--repeat
listaR = repeat "hola"

{-Replicate
    Funciona como un ciclo for ,se necesita pasar un parametro
    para saber cuantas veces de se va a repetir , es lo que lo hace
    diferente a repeat , aparte que este ultimo gener aun lista
    inifinita
-}

--Recursividad
double x = x+x
quadruple x = double (double x)

--fst siempre toma una tupla de dos elementos y devuelve el primer elemento de esa tupla.
tupla = ("Julian", "morchi")
primer = fst tupla

--Pone todos los elementos de las lista de una lista en una sola lista
concat0 :: [[a]] -> [a]
concat0 xss = [x | xs <- xss, x <- xs]

-- Lista de listas de listas
concat1:: [[[a]]] -> [a]
concat1 xsss = [x | xss <- xsss, xs <- xss, x <- xs]

--numeros pares
listPares :: Int -> [Int]
listPares n= [x| x<-[1..n],even x]

factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

prime :: Int -> Bool
prime n = factors n == [1,n]

primes:: Int -> [Int]
primes y = [x | x <- [2..y], prime x]

primoGem :: Int -> [Int]
primoGem n = [x|x<-[1..n], prime x, prime (x+2) || prime(x-2)]

--Uso zip zip toma dos listas y las combina en una lista de tuplas
--pairs hace pares consecutivos
pairs::[a]-> [(a,a)]
pairs xs = zip xs (tail xs)

--Saber si una lista esta ordenadar
sorted :: Ord a => [a] -> Bool
sorted xs = and [x <= y | (x, y) <- pairs xs]

--Busca elementos tal que el tercero al cuadrado sea la suma de el cudrado de los otros 2, devuelve lista
pyths :: Int -> [(Int,Int,Int)]
pyths n = [(x,y,z) | x <-[1..n],y <-[1..n],z <-[1..n], z^2 == x^2 + y^2]

perfect :: Int -> Bool
perfect n 
            |sum(factors n) - n == n = True
            |otherwise = False

perfects :: Int -> [Int]
perfects n = [x | x <- [1..n], perfect x]

