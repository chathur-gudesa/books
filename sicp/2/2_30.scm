(define (square-tree tree) (cond ((null? tree) '()) ((pair? (car tree)) (cons (square-tree (car tree)) (square-tree (cdr tree)))) (else (cons (square (car tree)) (square-tree (cdr tree))))))

(define (map proc items) (if (null? items)
(list)
(cons (proc (car items))
(map proc (cdr items)))))

(define (square-tree-rec tree) (map 
(lambda (sub-tree) (cond ((null? sub-tree) sub-tree) ((pair? sub-tree) (square-tree-rec sub-tree)) (else (square sub-tree))))
 tree))

