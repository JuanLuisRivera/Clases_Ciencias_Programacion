-- Definimos el tipo número natural.
data Nat = Cero | Suc Nat deriving(Show,Eq)

--Función que evalua la igualdad entre numeros naturales
igualNat :: Nat -> Nat -> Bool
igualNat Cero Cero = True
igualNat 