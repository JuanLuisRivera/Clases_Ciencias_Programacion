#|Practica 1: Rivera Ibarra Juan Luis
              |#

; Ejercicio 1
#|Un predicado que recibe una cadena s y devuelve verdadero si la cadena
tiene parentesis balanceados y falso en otro caso.|#
(define (parentesis-balanceados? s) #|La funcion contara el numero de parentesis de apertura o cerradura y determinara si
es par o impar, dando como resultado una respuesta en forma booleana|#
  (even? (foldl (lambda (char count) #| (Ocupando "foldl") Se aplica la funcion lambda sobre la lista "lista_string"
  y posteriormente se comprueba si el resultado de la cuenta es par o impar|#
            (if (or (equal? char #\() (equal? char #\))) ;(Funcion lambda) determina si se encuentra con simbolos "(" o ")"
                (+ count 1) ;De encontrar simbolos se suma uno a la cuenta 
                count)) ; De no encontrar simbolos, deja el valor como esta
          0 ; Se asigna un valor inicial a "count" igual a 0
          (string->list s)))) ;Se convierte la cadena en una lista que ocupara la funcion "foldl"

; Ejercicio 2
#|Un predicado que recibe una cadena s y devuelve verdadero si la cadena
tiene mas vocales que consonantes y falso en otro caso.|#


; Ejercicio 3
#|Un predicado que recibe dos cadenas s1 y s2 y devuelva verdadero si las
cadenas son isomorfas y falso en otro caso.|#


; Ejercicio 4
#|Un predicado que recibe un numero entero n y devuelve verdadero si el
numero es automorfico y falso en otro caso.|#


; Ejercicio 5
#|Una funcion recursiva que recibe una lista de numeros n y devuelve una
lista de cadenas indicando si el numero es si Positivo, Negativo o Cero|#
(define (clasificar-num lst))


; Ejercicio 6
#|Una funcion recursiva que simula lanzamientos de dados hasta alcanzar
un numero objetivo, recibe el numero objetivo n y devuelve la lista de numeros
generados hasta alcanzar el numero objetivo.|#



; Ejercicio 7
#|Una funcion recursiva que rota una lista hacia la izquierda un numero de
veces dado, recibe una lista lst y un numero para rotar n, devuelve la lista ya rotada.|#


; Ejercicio 8
#|Una funcion recursiva recibe una lista de numeros lst y devuelve la suma
de los elementos de una lista alternando entre suma y restar cada elemento.|#


; Ejercicio 9
#|Una funcion recursiva recibe un numero n y devuelve una lista de todas las
combinaciones validas de parentesis para n pares.|#


; Ejercicio 10
#|Una funcion recursiva recibe un numero entero n y devuelve el numero de
pasos necesarios para reducir el numero dado a 1 siguiendo estas reglas:
Si es par, dividir entre 2.
Si es impar, multiplicar por 3 y sumar 1.|#

