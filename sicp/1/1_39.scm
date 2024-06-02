(define (cont-frac n d k)
(define (cont-frac-impl n d i cur) (if (= i 0) cur (cont-frac-impl n d (- i 1) (/ (n i) (+ (d i) cur)))))
(cont-frac-impl n d k 0)
)

(define (tan-cf x k)
(define (n i) (if (= i 1) x (- 0 (square x))))
(define (d i) (- (* 2 i) 1))
(cont-frac n d k)
)

