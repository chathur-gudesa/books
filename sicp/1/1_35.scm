(define (close-enough? x y) (> 0.00001 (abs (- x y))))

(define (fixed-point f x) 
(let ((guess (f x)))
(cond ((close-enough? x guess) guess) (else (fixed-point f guess)))
))

; > (fixed-point (lambda (x) (+ 1 (/ 1 x))) 1.0)
; 1.6180327868852458
