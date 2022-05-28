#lang racket

(define (inside? x a b)
  ;switch statement
  (cond
    ;checks if x is a string
    [(string? x)
     "X is a string, should be a number"]
    
    ;checks if a is a string
    [(string? a)                            
     "A is a string, should be a number"]

    ;checks if b is a string
    [(string? b)
     "B is a string, should be a number"]

    ;check wheter x is between a and b
    [else (if (and (> x a) (< x b))
      "Yes"
      "No")]))