(define (tree-map proc tree) (map (lambda (sub-tree) (cond ((null? sub-tree) sub-tree) ((pair? sub-tree) (tree-map proc sub-tree)) (else (proc sub-tree)))) tree))
