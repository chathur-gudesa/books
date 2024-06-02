(define (fixed-point f x)
(define (average x y) (/ (+ x y) 2))
(define (close-enough? x y) (> 0.001 (abs (- x y))))
(let ((guess (f x)))
(cond ((close-enough? x guess) guess) (else (fixed-point f guess)))
))

(define dx 0.0001)
(define (deriv f x) (/ (- (f (+ x dx)) (f x)) dx))
(define (newton-transform f) (lambda (x) (- x (/ (f x) (deriv f x)))))
(define (newtons-method f x) (fixed-point (newton-transform f) x))

(define (cubic a b c)
(lambda (x)
(let (
(t3 (* x (square x)))
(t2 (* a (square x)))
(t1 (* b x)) 
(t0 c)
) 
(+ t0 t1 t2 t3))))

(newtons-method (cubic 1 1 1) 1)
