#lang racket

(define (difference f)

  ;defining lambda function to substract f(x) - f(y)
  (λ (x y) (- (f x) (f y))))