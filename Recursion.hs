fac :: Int -> Int
--fac 0 = 1
fac n  
    |n > 0 = n * fac (n-1)
    |otherwise = 1

product1 :: Num a => [a] -> a
product1 [] = 1
product1 (n:ns) = n * product ns

cicloFor :: Int -> Int -> Int -> String
cicloFor i n m
    |i <= n = "i = " ++ show i ++ "\n" ++ cicloFor (i+m) n m
    |otherwise = "Fin del ciclo"

cicloFor2 :: Int -> Int -> Int -> String
cicloFor2 i n m
    |i <= n = "n = " ++ show n ++ "\n" ++ cicloFor2 i (n-m) m
    |otherwise = "Fin del ciclo"


--putStrLn $ cicloFor i n m

fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

listFi :: Int -> [Int]
listFi n = [fibonacci x | x <- [0..n]]

longitud :: [a] -> Int
longitud [] = 0
--el "_" es para decir que el header no nos interesa, solo queremos trabajar con el tail
longitud (_:xs) = 1 + longitud xs