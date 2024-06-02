; We seem to require floor(log_2(n)) average-damps in order to compute nth roots

(define (pow x n) (if (= n 0) 1.0 (* x (pow x (- n 1)))))
(define (compose f g) (lambda (x) (f (g x))))
(define (repeated f n) (if (= n 1) f (compose f (repeated f (- n 1)))))

(define (fixed-point f x n)
(define (average-damp y) (/ (+ x y) 2))
(define (repeated-average-damp y) ((repeated average-damp n) y))
(define (close-enough? x y) (> 0.001 (abs (- x y))))
(let ((guess (f x)))
(cond ((close-enough? x guess) guess) (else (fixed-point f (repeated-average-damp guess) n)))
))

(define (nth-root x n) (fixed-point (lambda (y) (/ x (pow y (- n 1)))) x (floor (/ (log (+ n 0.5)) (log 2)))))
