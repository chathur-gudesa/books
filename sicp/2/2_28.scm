(define (fringe l)
(define (fringe-impl l1 l2)
(cond 
((null? l1) l2)
((pair? (car l1)) (fringe-impl (cdr l1) (append l2 (fringe (car l1)))))
(else (fringe-impl (cdr l1) (append l2 (list (car l1)))))
)
)
(fringe-impl l '()))
