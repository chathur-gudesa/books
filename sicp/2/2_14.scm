(define (par1 r1 r2) (div-interval (mul-interval r1 r2) (add-interval r1 r2)))

(define (par2 r1 r2) (let ((one (make-interval 1 1)))
(div-interval
one (add-interval (div-interval one r1) (div-interval one r2)))))

; 11> (define r1 (make-center-percent 10 10)) 
; *** WARNING -- defining global variable: r1
; 11> (define r2 (make-center-percent 5 1))
; *** WARNING -- defining global variable: r2
; 11> r2
; (4.95 . 5.05)
; 11> r1
; (9. . 11.)
; 11> (par1 r1 r2)
; (2.7757009345794397 . 3.982078853046595)
; 11> (par2 r1 r2)
; (3.193548387096774 . 3.4610591900311527)
; 11> 
; 1> (define res1 (par1 r1 r2))
; *** WARNING -- defining global variable: res1
; 11> (define res2 (par2 r1 r2))
; *** WARNING -- defining global variable: res2
; 11> (center res1) 
; 3.3788898938130174
; 11> (percent res1)
; 17.85169029443838
; 11> (center res2)
; 3.327303788563963
; 11> (percent res2)
; 4.019933554817279
