; (define (make-branch length structure) (list length structure))
; (define (make-mobile left right) (list left right))

(define (make-mobile left right) (cons left right))
(define (make-branch length structure) (cons length structure))

; a
(define (left-branch mobile) (car mobile))
(define (right-branch mobile) (cadr mobile))
(define (branch-length branch) (car branch)) 
(define (branch-structure branch) (cadr branch))

; b
(define (branch-weight branch)
(let ((s (branch-structure branch)))
(if (pair? s) (+ (branch-weight (left-branch s)) (branch-weight (right-branch s))) s)
))

(define (total-weight mobile) (+ (branch-weight (left-branch mobile)) (branch-weight (right-branch mobile))))
(define (structure-weight s) (if (pair? s) (total-weight s) s))

; c

(define (is-balanced mobile-or-weight) (
if (pair? mobile-or-weight)

(let ((lb (left-branch mobile-or-weight)) (rb (right-branch mobile-or-weight))) 
(and (is-balanced (branch-structure lb)) (is-balanced (branch-structure rb)) 
(= (* (branch-length lb) (structure-weight (branch-structure lb))) (* (branch-length rb) (structure-weight (branch-structure rb)))))
) #t))

; d

; We would just have to change the selectors to use cdr instead of cadr

; (define b1 (make-branch 5 1))
; (define b2 (make-branch 3 2))
; (define b3 (make-branch 2 4))
; 
; (define m1 (make-mobile b1 b2))
; (define m2 (make-mobile b1 b3))
; 
; (define b4 (make-branch 3 m1)) 
; (define b5 (make-branch 7 m2)) 
; 
; (define m3 (make-mobile b4 b5))
; 
; (define m4 (make-mobile b1 b1))
; 
; (define b6 (make-branch 4 5))
; (define b7 (make-branch 2 10))
; (define m5 (make-mobile b6 b7))
; 
; (define b8 (make-branch 1 2))
; (define b9 (make-branch 2 1))
; (define m6 (make-mobile b8 b9)) 
; 
; (define b10 (make-branch 10 m5)) 
; (define b11 (make-branch 50 m6))
; (define m7 (make-mobile b10 b11))
; (define m8 (make-mobile b1 b11))
; 
; (define m6 (make-mobile b8 b9))
