; Because of non-zero errors that combine differently 
; based on the subexpressions of the algebraic equation. 
; A simple example of this are the two equivalent algebraic
; equations "0" and "I - I", where I is some interval. 
; In the latter, the errors of I combine and the error of 
; the entire expression is thus non-zero.

; Idea 1: Define a "canonical-form" of an expression and first break down
; every expression into its canonical-form before evaluating its value.

; "I - I" -> "0" 

; (R1.R2)/(R1 + R2) -> (1 / (1 / R1) + (1 / R2))
