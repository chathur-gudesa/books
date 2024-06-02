(define (double f) (lambda (x) (f (f x))))

; 28> (((double (double double)) inc) 5)
; 21
