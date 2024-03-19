--Shaina Alexandra Xochitiotzi Rojas
{- Gran Pirámide de Keops:
Altura original: Aproximadamente 146.6 metros (481 pies).
Lado de la base: Aproximadamente 230.4 metros (756 pies).

Pirámide de Kefrén:
Altura: Aproximadamente 136.4 metros (448 pies).
Lado de la base: Aproximadamente 214.5 metros (704 pies).

Pirámide de Micerinos:
Altura: Aproximadamente 65 metros (213 pies).
Lado de la base: Aproximadamente 108.5 metros (356 pies).

Algunas de las piedras inferiores de la Gran Pirámide de alrededor de 2.5 metros de largo.
it's estimated to consist of around 2.3 million blocks of stone. esto para la gran piramide-}

areaTrian :: Float -> Float
areaTrian b = (b ^ 2) / 2

volumenPiramide:: Float -> Float -> Float
volumenPiramide a b= 1/3 * (areaTrian b) * a

piedras:: Float -> Float -> Float
piedras a b = (volumenPiramide a b) / (2.5 ^ 3)
    --where z = a - 2.5

calculoPiedras:: Float -> Float -> String 
calculoPiedras a b = "El numero aproximado de piedras es de " ++ show(piedras a b)


