#lang racket

(define (myfunc a b)
  ;switch case
  (cond
    ;checks if a is a string
    [(string? a )
     "a should be a number, not a string"]

    ;checks if b is a string
    [(string? b)
     "b should be a number, not a string"]
    
    ;calculating result 
    [else
     (/ (+ (* a a ) (* b b)) 2)]))