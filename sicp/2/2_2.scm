(define (make-point x y) (cons x y))
(define (x-point p) (car p))
(define (y-point p) (cdr p))

(define (make-segment p1 p2) (cons p1 p2))
(define (start-segment s) (car s))
(define (end-segment s) (cdr s))

(define (average x y) (/ (+ x y) 2))
(define (midpoint-segment s)
(make-point 
(let ((x1 (x-point (start-segment s))) (x2 (x-point (end-segment s)))) (average x1 x2))
(let ((y1 (y-point (start-segment s))) (y2 (y-point (end-segment s)))) (average y1 y2))))
