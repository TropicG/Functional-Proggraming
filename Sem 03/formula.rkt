#lang racket

(define (calculating x n sum i)

  (cond
    ;end of recursion, when the intiger for power is > n returns the sum
    [(< n i)
     sum]
    [
     ;returns function with the sum + x^i and i++
     (calculating x n (+ sum (expt x i)) (add1 i))]))  

;formula: 1 + x^1 + x^2 + .... + x^n
(define (formula x n)

  ;defining the sum and the intiger for power
  (define sum 0)
  (define i 0)

  (calculating x n sum i))