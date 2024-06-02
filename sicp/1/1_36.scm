(define (fixed-point f x)
(define (average x y) (/ (+ x y) 2))
(define (close-enough? x y) (> 0.001 (abs (- x y))))
(define (print-helper x y) x)
(let ((guess (f x)))
(cond ((close-enough? x guess) guess) (else (fixed-point f (print-helper (average x guess) ((lambda (x) (newline)) (display x))))))
))

(define (f x) (/ (log 1000) (log x)))

(fixed-point f 2)

; no average-damping: 23 steps
; average-damping   : 7  steps
