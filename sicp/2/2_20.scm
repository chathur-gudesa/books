(define (same-parity x . l) 
(define (same-parity-impl l)
(cond 
((null? l) (list)) 
((= (remainder x 2) (remainder (car l) 2)) (cons (car l) (same-parity-impl (cdr l))))
(else (same-parity-impl (cdr l)))
))
(cons x (same-parity-impl l)))
