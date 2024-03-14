--Shaina Alexandra Xochitiotzi Rojas

raicesFormulaCuad :: Float-> Float-> Float-> String
raicesFormulaCuad a b c 
                    |discriminante == 0 = "Solo hay una solucion"
                    |discriminante > 0 = "Hay dos soluciones"
                    |discriminante < 0 = "Hay dos soluciones con numeros imaginarios"
                    where discriminante =  (b ^^ 2) - (4 * a * c)