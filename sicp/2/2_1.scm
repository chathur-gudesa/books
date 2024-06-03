(define (gcd a b) (if (= b 0) a (gcd b (remainder a b))))
(define (sgnm x) (if (< x 0) -1 1))
(define (make-rat n d) (let ((nabs (abs n)) (dabs (abs d)) (g (gcd (abs n) (abs d))) (sign (* (sgnm n) (sgnm d))))
(cons (* sign (/ nabs g)) (/ dabs g))))
