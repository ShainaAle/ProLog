twice :: (a -> a) -> a -> a
twice f x = f (f x) -- f (f (x))
-- succ 0 = 1 
-- map nos permite aplicar una funcion a cada elemento de la lista
--map (\x->x^2) [4,5,6] parametros -> funcion //funcion anonima

--monada\ archivos
-- filter even [1..10] filtra los pares
--foldr (+) 0 [1,2,3]