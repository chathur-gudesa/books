; assuming that the intervals are (l1, u1) and (l2, u2), 
; the lower bound of the difference would be l1 - u2 
; and the upper bound would be u1 - l2

(define (sub-interval i1 i2) (make-interval (- (lower-bound i1) (upper-bound i2)) (- (upper-bound i1) (lower-bound i2))))
