(define (reverse l) 
(define (reverse-impl l1 l2) (if (null? l1) l2 (reverse-impl (cdr l1) (cons (car l1) l2))))
(define nil (list))
(reverse-impl l nil))
