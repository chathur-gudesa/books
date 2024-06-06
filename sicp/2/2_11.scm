(define (sgnm x) (if (> x 0) 0 1))

(define (mul-interval i1 i2) 
(let ((a (lower-bound i1)) (b (upper-bound i1)) (c (lower-bound i2)) (d (upper-bound i2)))
(let ((s (+ (* 8 (sgnm a)) (* 4 (sgnm b)) (* 2 (sgnm c)) (* 1 (sgnm d))))) 
(cond 
((= s 0) (make-interval (* a c) (* b d)))
((= s 2) (make-interval (* b c) (* b d)))
((= s 3) (make-interval (* b c) (* a d)))
((= s 8) (make-interval (* a d) (* b d)))
((= s 10) (make-interval (min (* a d) (* b c)) (max (* a c) (* b d))))
((= s 11) (make-interval (* b c) (* a c)))
((= s 12) (make-interval (* b c) (* a d)))
((= s 14) (make-interval (* a d) (* a c)))
((= s 15) (make-interval (* b d) (* a c)))
(else (error "inconsistent interval detected"))
))))
 
