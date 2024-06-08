(define (cc amount coin-values) (cond ((= amount 0) 1)
((or (< amount 0) (no-more? coin-values)) 0)
(else
(+ (cc amount
(except-first-denomination
coin-values))
(cc (- amount
(first-denomination
coin-values))
coin-values)))))

(define (first-denomination coin-values) (car coin-values))
(define (except-first-denomination coin-values) (cdr coin-values))
(define (no-more? coin-values) (null? coin-values))

; No the order of th list coin-values does not matter because 
; the number of ways to change a value should depend only on 
; the set of coins available.
