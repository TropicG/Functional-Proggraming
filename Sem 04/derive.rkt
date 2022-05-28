#lang racket


(define (derive f eps)

  ;defining lambda function to return the first order derivative
  (λ (x) (/ (- (f (+ x eps)) (f x)) eps))
  )