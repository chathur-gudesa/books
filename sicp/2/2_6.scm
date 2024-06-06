; one := (add-1 zero)
;      = ((lambda (f) (lambda (x) (f ((zero f) x))))
;      = ((lambda (f) (lambda (x) (f ((lambda (x) x) x))))
;      = (lambda (f) (lambda (x) (f x)))

; two := (add-1 one)
;      = ((lambda (f) (lambda (x) (f ((one f) x))))
;      = ((lambda (f) (lambda (x) (f (f x)))))

; n   := (add-1 (- n 1))
;      = (lambda (f) (lambda (x) (f (f ... (f x))))) ; f repeats a total of n times

; (define (+ n m)
; (lambda (f) (lambda (x) (f (f ... (f x))))) ; where f repeats n + m times
; )
