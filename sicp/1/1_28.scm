; I ran this code on https://inst.eecs.berkeley.edu/~cs61a/fa14/assets/interpreter/scheme.html
; since it supported the (random n) function

(define (even? n) (= (remainder n 2) 0))

(define (square n) (* n n))

(define (rem-of-square x m) (remainder (square x) m))

; g: if x is a non-trivial sqrt of 1 mod m, then return 0
;    else, return x^2 % m
(define (g x m) (f x m (rem-of-square x m))) 

(define (f x m y)
(cond
((= x (- m 1)) y)
((= x 1) y)
((= y 1) 0)
(else y)))

(define (expmod base e m) (cond ((= e 0) 1)
((even? e) (remainder 
(square (expmod base (/ e 2) m))
m))
(else
(remainder
(* base (expmod base (- e 1) m))
m))))

(define (miller-rabin-test n) (define (try-it a)
(= (expmod a (- n 1) n) 1))
(try-it (+ 1 (random (- n 2)))))

(define (fast-prime? n times) (cond ((= times 0) true)
((miller-rabin-test n) (fast-prime? n (- times 1)))
(else false)))
