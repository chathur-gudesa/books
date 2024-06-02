; a

(define (cont-frac n d k) 
(define (cont-frac-impl n d i k) (if (> i k) 0 (/ (n i) (+ (d i) (cont-frac-impl n d (+ i 1) k)))))
(cont-frac-impl n d 1 k)
)

(cont-frac (lambda (i) 1.0) (lambda (i) 1.0) 100)

; 4> (cont-frac (lambda (i) 1.0) (lambda (i) 1.0) 100)
; .6180339887498948
; 4> (cont-frac (lambda (i) 1.0) (lambda (i) 1.0) 1)
; 1.
; 4> (cont-frac (lambda (i) 1.0) (lambda (i) 1.0) 2)
; .5
; 4> (cont-frac (lambda (i) 1.0) (lambda (i) 1.0) 3)
; .6666666666666666
; 4> (cont-frac (lambda (i) 1.0) (lambda (i) 1.0) 4)
; .6000000000000001
; 4> (cont-frac (lambda (i) 1.0) (lambda (i) 1.0) 5)
; .625
; 4> (cont-frac (lambda (i) 1.0) (lambda (i) 1.0) 7)
; .6190476190476191
; 4> (cont-frac (lambda (i) 1.0) (lambda (i) 1.0) 6)
; .6153846153846154
; 4> (cont-frac (lambda (i) 1.0) (lambda (i) 1.0) 8)
; .6176470588235294
; 4> (cont-frac (lambda (i) 1.0) (lambda (i) 1.0) 9)
; .6181818181818182
; 4> (cont-frac (lambda (i) 1.0) (lambda (i) 1.0) 10)
; .6179775280898876
; 4> (cont-frac (lambda (i) 1.0) (lambda (i) 1.0) 11)
; .6180555555555556

; so k needs to be approximately 11

; b

(define (cont-frac n d k) 
(define (cont-frac-impl n d i cur) (if (= i 0) cur (cont-frac-impl n d (- i 1) (/ (n i) (+ (d i) cur)))))
(cont-frac-impl n d k 0)
)
