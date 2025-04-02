#lang plai ;; Especifica que ocuparemos el esquema PLAI, de manera que sea correctamente interpretado

;; Definicion del ASA para AE
(define-type AE
  [num (n number?)]               ;; Numero
  [add (izq AE?) (der AE?)]       ;; Suma de dos expresiones "AE"
  [sub (izq AE?) (der AE?)])      ;; Resta de dos expresiones "AE"

;; parse : s-expression - > AE
(define (parse sexp)
  (cond
    [(number? sexp) (num sexp)]   ;; Si es un numero ocupar el constructor "num"
    [(list? sexp) ;; En caso de que la expresion sea una lista
     (case (car sexp)
       [(+) (add (parse (second sexp)) (parse (third sexp)))]  ;; Caso de suma
       [(-) (sub (parse (second sexp)) (parse (third sexp)))]  ;; Caso de resta
       [else (error "Invalid operation")])]))                  ;; Situacion donde la operacion no es valida
(displayln "parse function loaded successfully")


;; Define a simple testing mechanism
(define (test)
  (unless (equal? (parse '(+ 5 3)) (add (num 5) (num 3)))
    (error "Test failed for '(+ 5 3)'"))
  (unless (equal? (parse '(- 8 2)) (sub (num 8) (num 2)))
    (error "Test failed for '(- 8 2)'"))
  (displayln "All tests passed."))

;; Automatically run the tests when the file is loaded
(displayln "File loaded successfully")
(test)