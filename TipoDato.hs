{- 
Num - Numeric types
Eq - Equality types
Ord - Ordered types
-}
{-
        Ejemplos , para crear un tipo de datos nos podria sevir para compara dias de la 
        semana
-}

{-PARA UN CODIGO EN GHCI DE VARIAS LINEAS DE SOLOCA
            :{

            ghci> :{
            ghci| data Dia = Lunes | Martes | Miercoles | Jueves | Viernes | Sabado | Domingo deriving (Eq,Ord)
                                        
            
                                    ===> o Tambien <===

            data Dia = Lunes | Martes | Miercoles | Jueves | Viernes | Sabado | Domingo deriving (Eq,Ord,Enum,Show)


            ghci| data Dia = Lunes | Martes | Miercoles | Jueves | Viernes | Sabado | Domingo deriving (Eq,Ord,Enum,Show,Bounded)


            ghci| data Dia = Lunes | Martes | Miercoles | Jueves | Viernes | Sabado | Domingo deriving (Eq,Ord,Enum,Show,Bounded,Read)
            Read  ==  casteo 
            Eq = 
            Ord = 
            Enum = POder enumarar el tipo 
            Show = Mostrar texto

            ghci| :}
            
            EJECUCION UNA VEZ TERMINADA EL TIPO DE DATOS.
            ghci> Martes > Miercoles 


            }
-}



{-
        Para el maximo de un tipo de datos
        ghci> maxBound :: Int 
        9223372036854775807
-}



{-
            Conversion de datos:
            ghci> read "2345" :: Double 
-}