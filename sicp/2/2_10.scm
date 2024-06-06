(define (contains-zero? l r) 
(cond ((= l 0) #t) ((= r 0) #t) ((< l 0) (> r 0)) (else #f)))

(define (div-interval x y) 
(let ((ly (lower-bound y)) (uy (upper-bound y)))
(
if (contains-zero? ly uy) (error "dividing by interval that contains zero") (
mul-interval
x (make-interval (/ 1.0 (upper-bound y))
(/ 1.0 (lower-bound y)))))))
