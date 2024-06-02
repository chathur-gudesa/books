(define (cont-frac n d k)
(define (cont-frac-impl n d i cur) (if (= i 0) cur (cont-frac-impl n d (- i 1) (/ (n i) (+ (d i) cur)))))
(cont-frac-impl n d k 0)
)

(+ (cont-frac 
(lambda (x) 1.0)
(lambda (x) (let ((r (remainder x 3))) (if (= r 2) (* (/ (+ x 1) 3) 2) 1)))
100) 2)


; 7> (+ (cont-frac
; (lambda (x) 1.0)
; (lambda (x) (let ((r (remainder x 3))) (if (= r 2) (* (/ (+ x 1) 3) 2) 1)))
; 100) 2)
; 2.7182818284590455
