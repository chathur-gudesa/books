(define (double x) (+ x x))
(define (halve x) (/ x 2))
(define (even? n) (= (remainder n 2) 0))
(define (fast-mult a b) (cond ((= a 0) 0) ((even? a) (double (fast-mult (halve a) b))) (else (+ b (fast-mult (- a 1) b)))))
