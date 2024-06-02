; sqrt 

(define (iterative-improve good-enough? improve) (lambda (guess) (if (good-enough? guess) guess ((iterative-improve good-enough? improve) (improve guess)))))

(define (sqrt x) 
(define (average x y) (/ (+ x y) 2.0))
(define (good-enough? guess) (< (abs (- (square guess) x)) 0.001))
(define (improve guess) (average guess (/ x guess)))
((iterative-improve good-enough? improve) x))

; (sqrt 4) 
; (sqrt 25)

; fixed-point
(define (iterative-improve good-enough? improve) (lambda (guess) (if (good-enough? guess) guess ((iterative-improve good-enough? improve) (improve guess)))))

(define (fixed-point f first-guess)
(define tolerance 0.00001)
(define (close-enough? x) (< (abs (- x (f x))) tolerance))
(define (improve x) (f x))
((iterative-improve close-enough? improve) first-guess))

; (fixed-point cos 1.0)
