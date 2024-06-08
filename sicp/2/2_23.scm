(define (for-each-impl proc l)
(if (null? l) '() (proc (car l)))
(if (null? l) '() (for-each-impl proc (cdr l))))

(for-each-impl (lambda (x) (newline) (display x))
(list 57 321 88))
