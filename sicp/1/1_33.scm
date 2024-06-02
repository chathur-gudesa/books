; part a
(define (accumulate filter combiner null-value term a next b) (if (> a b) null-value (combiner (if (filter a) (term a) null-value) (accumulate filter combiner null-value term (next a) next b))))

; define the prime? function

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
((< n 2) false)
((miller-rabin-test n) (fast-prime? n (- times 1)))
(else false)))

(define (prime? n) (fast-prime? n 20))

(define (prime-sum term a next b) (accumulate prime? + 0 term a next b))
(define (square-prime-sum a b) (define (square n) n) (define (inc n) (+ n 1)) (prime-sum square a inc b))

; part b

(define (gcd a b) (if (= b 0) a (gcd b (remainder a b))))
(define (product filter term a next b) (accumulate filter * 1 term a next b))

(define (f n) (define (filter a) (= 1 (gcd a n))) (define (identity n) n) (define (inc n) (+ n 1)) (product filter identity 1 inc (- n 1)))
