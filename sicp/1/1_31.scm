; part a
(define (product term a next b) (define (iter a result) (if (> a b) result (iter (next a) (* result (term a)))))
(iter a 1))

(define (factorial n) (define (identity n) n) (define (inc n) (+ n 1)) (product identity 1 inc n))

(define (numerator k) (- (+ k 2) (remainder k 2)))
(define (denominator k) (- (+ k 2) (- 1 (remainder k 2))))

(define (inc n) (+ n 1))
(define (pi-approx n) (define (term k) (/ (numerator k) (denominator k))) (* 4 (product term 1.0 inc n)))

; part b

(define (product term a next b) (if (> a b) 1 (* (term a) (product term (next a) next b))))

(define (factorial n) (define (identity n) n) (define (inc n) (+ n 1)) (product identity 1 inc n))

(define (numerator k) (- (+ k 2) (remainder k 2)))
(define (denominator k) (- (+ k 2) (- 1 (remainder k 2))))
(define (inc n) (+ n 1))

(define (pi-approx n) (define (term k) (/ (numerator k) (denominator k))) (* 4 (product term 1.0 inc n)))
