#lang racket

(define (repeater str)
  (define (helper count glue res)
    ( cond [(= count 1) res]
           [else (helper (- count 1) glue (string-append res glue str))]))
  (λ (x y) ( helper x y str)))