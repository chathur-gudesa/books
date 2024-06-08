(define my-list-1 (list 1 3 (list 5 7) 9))
(define my-list-2 (list (list 7)))
(define my-list-3 (list 1 (list 2 (list 3 (list 4 (list 5 (list 6 7)))))))

; 35> (cadr (caddr my-list-1))
; 7
; 35> (caar my-list-2) 
; 7
; 35> (cadadr (cadadr (cadadr my-list-3)))
; 7
