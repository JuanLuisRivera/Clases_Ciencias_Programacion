module Practica3
where 

contiene :: (Eq a) => a -> [a] -> Bool
contiene x [] = False
contiene x (y:ys) = (x == y) || (contiene x ys)


eliminaRepetidos :: (Eq a) => [a] -> [a]
eliminaRepetidos [] = []
eliminaRepetidos (x:xs) = (x:(eliminaRepetidos (eliminaRepetidosAux x xs)))



eliminaRepetidosAux :: (Eq a) => a -> [a] -> [a]
eliminaRepetidosAux x ys = [z |z <- ys, not (z == x)]



unionListas :: (Eq a) => [a] -> [a] -> [a]
unionListas [] xs = xs
unionListas (y:ys) xs = y:(unionListas ys xs)

interseccionListas :: (Eq a) => [a] -> [a] -> [a]
interseccionListas xs ys = [z |z <- xs, (contiene z ys)]

mapea :: (a -> b) -> [a] -> [b]
mapea f xs = [f z |z <- xs]

zipeaWith :: (a -> b -> c) -> [a] -> [b] -> [c]
zipeaWith f [] [] = []
zipeaWith f (x:xs) (y:ys) = (f x y):(zipeaWith f xs ys)

filtra :: (a -> Bool) -> [a] -> [a]
filtra f xs = [z |z <- xs, f z]

minimoLista :: [Int] -> Int
minimoLista [] = error "Prelude.minimum: empty list"


calificaciones :: [(String, Int)] -> ([(String, Int, String )], [(String, Int, String)])
calificaciones _ = error "Falta implementar"

listaAlumnos :: [(String, Int)]
listaAlumnos = [("Benedict",6),("Martin",7),("Paola",6),("Karolina",2),("Lissy",3),
                ("Clari",4),("Ritchie",7),("Anna",1),("Harriott",2),("Wayne",9),
                ("Bryant",6),("Noah",5),("Jerri",3),("Shandra",3),("Ameline",9),
                ("Costanza",3),("Ashlin",6),("Estrella",7),("Perla",9),("Susannah",6),
                ("Anselma",10),("Renie",4),("Whittaker",1),("Madelle",1),("June",10),
                ("Marv",4),("Gwenore",3),("Crysta",3),("Merola",2),("Trent",6)]