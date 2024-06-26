(define (square-list items) (if (null? items)
(list)
(cons (square (car items)) (square-list (cdr items)))))

(define (map proc items) (if (null? items)
(list)
(cons (proc (car items))
(map proc (cdr items)))))

(define (square-list-2 items) (map (lambda (x) (square x)) items))
