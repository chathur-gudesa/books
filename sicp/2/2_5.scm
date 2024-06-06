(define (pow x n) (if (= n 0) 1 (* x (pow x (- n 1)))))
(define (cons a b) (* (pow 2 a) (pow 3 b)))

(define (exponent-of n x) (if (= (remainder x n) 0) (+ 1 (exponent-of n (/ x n))) 0))

(define (car pr) (exponent-of 2 pr))
(define (cdr pr) (exponent-of 3 pr))

; 1> (define my-pair (cons 7 3)) 
; *** WARNING -- defining global variable: my-pair
; 1> my-pair
; 3456
; 1> (car my-pair) 
; 7
; 1> (cdr my-pair)
; 3

; can be proved by using the substitution method

; (car (cons x y)) 
; (car (2^x.3^y))
; (exponent-of 2 (2^x.3^y))
; x

; similarly for cdr
