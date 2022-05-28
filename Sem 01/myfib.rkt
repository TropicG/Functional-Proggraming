#lang racket
(define (fib-rec x)
  (cond
    ; if x is a string shows error
    [(string? x) (error "x was string")]
    
    ; if x is lower than 0 shows error
    [(< x 0) (error "x was negative")]
    
    ; if x is 0 returns zero
    [(zero? x) 0]
    
    ;;if x is 1 returns 1
    [(= x 1) 1]
    
    ;;calculating fib-rec
    [else (+ (fib-rec(sub1 x)) (fib-rec(- x 2)))]))
    