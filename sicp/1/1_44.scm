(define (compose f g) (lambda (x) (f (g x))))
(define (repeated f n) (if (= n 1) f (compose f (repeated f (- n 1)))))

(define dx 0.0001)
(define (smooth f) (lambda (x) (/ (+ (f (- x dx)) (f x) (f (+ x dx))) 3)))

(define (n-smooth n) (repeated smooth n))

; (define (h x) (((n-smooth 5) square) x))
