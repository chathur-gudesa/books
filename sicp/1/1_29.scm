(define (sum a b term next) (if (> a b) 0 (+ (term a) (sum (next a) b term next))))

(define (inc n) (+ n 1))

(define (si-1 f a b n h) (define (si-term k) (* (+ 2 (* 2 (remainder k 2))) (f (+ a (* k h))))) ( * (/ h 3.0) (+ (f (+ a (* n h))) (f a) (sum 1 (- n 1) si-term inc))))

(define (simpsons-integral f a b n) (si-1 f a b n (/ (- b a) n)))

: 5> (simpsons-integral cube 0.0 1.0 1000)
: .2500000000000003
: 5> (simpsons-integral cube 0.0 1.0 10000)
: .2500000000000011

; The results with simpson's integral seems to be more accurate
