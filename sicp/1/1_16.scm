(define (fast-expt-iter a n) (fast-expt-iter-impl a n 1))
(define (fast-expt-iter-impl a n curr) (cond ((= n 0) curr) ((even? n) (fast-expt-iter-impl (square a) (/ n 2) curr)) (else (fast-expt-iter-impl (square a) (/ (- n 1) 2) (* curr a)))))
(define (even? n) (= (remainder n 2) 0))
