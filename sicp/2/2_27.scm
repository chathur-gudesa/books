(define (deep-reverse l)
(define (deep-reverse-impl l1 l2) (
cond 
((null? l1) l2) 
((pair? (car l1)) (deep-reverse-impl (cdr l1) (cons (deep-reverse (car l1)) l2)))
(else (deep-reverse-impl (cdr l1) (cons (car l1) l2)))
))
(deep-reverse-impl l '())
)

; > (define x (list (list 1 2) (list 3 4)))
; > (deep-reverse x)
; ((4 3) (2 1))
