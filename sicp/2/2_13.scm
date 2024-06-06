; i1 := (c1 - p1 * c1, c1 + p1 * c1) 
; i2 := (c2 + p2 * c2, c2 + p2 * c2) 

; (* i1 i2) = (c1 * c2 - p1 * c1 * c2 - p2 * c1 * c2 + p1 * p2 * c1 * c2, ...) 
            = (c1 * c2 - (p1 + p2) * c1 * c2 + small-number, ...) 
            = (make-interval-percent (* c1 c2) (+ p1 p2))
