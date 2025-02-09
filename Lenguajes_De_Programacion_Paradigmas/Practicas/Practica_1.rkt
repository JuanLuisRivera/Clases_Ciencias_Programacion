#|Un predicado que recibe una cadena s y devuelve verdadero si la cadena
tiene parentesis balanceados y falso en otro caso.|#
(define (even-parens? str)
  (define (count-parens str)
    (foldl (lambda (char count)
             (if (or (equal? char #\() (equal? char #\)))
                 (+ count 1)
                 count))
           0
           (string->list str)))
  
  (let ((count (count-parens str)))
    (even? count)))