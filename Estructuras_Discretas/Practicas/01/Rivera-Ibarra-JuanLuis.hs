-- Definimos el tipo número natural.
data Nat = Cero | Suc Nat deriving(Show,Eq)


--Función que transforma un entero en natural
tonat :: Int -> Nat
tonat 0 = Cero
tonat n = Suc (tonat (n - 1))


--Función que transforma un natural en entero
toint :: Nat -> Int
toint Cero = 0
toint (Suc n) = (toint n) + 1


--Función que dice si un numero es primo
isprime :: Int -> Bool
isprime k = if k > 1 then null [ x | x <- [2.. k - 1], k `mod` x == 0] else False


--Función que determina el factorial de un entero
fact :: Int -> Int
fact 0 = 1
fact n = n * fact (n - 1)


--Función que regresa las combinaciones de dos enteros de m en n, si n es mayor que m, en otro caso regresa cero
comb :: Int -> Int -> Int
comb n m = if n < m then 0 else div (fact n) (fact (n - m) * fact(m))


--Función que regresa las combinaciones en naturales
combnat :: Nat -> Nat -> Nat
combnat n m = tonat (comb (toint n) (toint m))


--Función que regresa el maximo comun divisor de dos enteros utilizando el algoritmo de Euclides
mcdint :: Int -> Int -> Int
mcdint 0 x = x
mcdint y x = mcdint (mod x y) y


--Función que regresa el maximo comun divisor de dos naturales
mcd :: Nat -> Nat -> Nat
mcd x y = tonat (mcdint (toint x) (toint y))


--Función que regresa el minimo comun multiplo de dos enteros
mcmint :: Int -> Int -> Int
mcmint x y = minimum [w | w <- [1.. (x * y)], (mod w x) == 0, (mod w y) == 0]


--Función que regresa el minimo comun multiplo de dos naturales
mcm :: Nat -> Nat -> Nat
mcm x y = tonat (mcmint (toint x) (toint y))


--Función de fibonacci para un numero entero
fiboint :: Int -> Int
fiboint 0 = 0
fiboint 1 = 1
fiboint n = fiboint (n - 1) + fiboint (n - 2)


--Función que regresa el numero de fibonacci de un numero natural
fibonacci :: Nat -> Nat
fibonacci x = tonat (fiboint (toint x))


--Lista que contiene a todos los numeros naturales
--l :: [Nat]
l = [tonat x | x <- [0..] ]


--Lista que contiene los naturales multiplos de 10
m = [tonat x | x <- [0..], mod x 10 == 0]


--Lista que contiene los numeros primos naturales
n = [tonat x | x <- [0..], isprime x]