(define (make-point x y) (cons x y))
(define (x-point p) (car p))
(define (y-point p) (cdr p))

(define (make-segment p1 p2) (cons p1 p2))
(define (start-segment s) (car s))
(define (end-segment s) (cdr s))
(define (seg-len s) (distance (start-segment s) (end-segment s)))

(define (average x y) (/ (+ x y) 2))
(define (midpoint-segment s)
(make-point
(let ((x1 (x-point (start-segment s))) (x2 (x-point (end-segment s)))) (average x1 x2))
(let ((y1 (y-point (start-segment s))) (y2 (y-point (end-segment s)))) (average y1 y2))))

(define (distance p1 p2) (sqrt (+ (square (- (car p1) (car p2))) (square (- (cdr p1) (cdr p2))))))

(define (perimeter r) (* 2 (+ (get-length r) (get-breadth r))))
(define (area r) (* (get-length r) (get-breadth r)))

; definition (1)
(define (get-length r) (seg-len (car r)))
(define (get-breadth r) (seg-len (cdr r)))
(define (make-rect length-segment breadth-segment) (cons length-segment breadth-segment))

; definition (2)

(define (get-length r) (distance (car r) (car (cdr r))))
(define (get-breadth r) (distance (car (cdr r)) (cdr (cdr r))))
(define (make-rect p1 p2 p3) (cons p1 (cons p2 p3)))
