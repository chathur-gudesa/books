(define (subsets s) (if (null? s) (list '()) (let ((rest (subsets (cdr s))))
(append rest (map (lambda (st) (cons (car s) st)) rest)))))

(subsets (list 1 2 3))

; It works because the set of subsets of a set S are all sets that including the 
; "first" element + all sets that exclude the "first" element
