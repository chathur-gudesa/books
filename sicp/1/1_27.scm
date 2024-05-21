(define (exp-mod x n m)
(cond ((= n 0) 1)
((even? n) (remainder (square (exp-mod x (/ n 2) m)) m))
(else (remainder (* x (exp-mod x (- n 1) m)) m))
))

(define (even? n) (= (remainder n 2) 0))

(define (test a p) (= (exp-mod a p p) a))

(define (is-prime-fermat? n) (is-prime-fermat-iter n 1))

(define (is-prime-fermat-iter n a)
(if (= a n) #t
(if (test a n) (is-prime-fermat-iter n (+ a 1)) #f)))


; > (is-prime-fermat? 561)
; #t
; > (is-prime-fermat? 1105)
; #t
; > (is-prime-fermat? 1729)
; #t
; > (is-prime-fermat? 2465)
; #t
; > (is-prime-fermat? 2821)
; #t
; > (is-prime-fermat? 6601)
; #t
; > 
