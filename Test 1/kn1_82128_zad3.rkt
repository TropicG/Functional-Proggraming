#lang racket

;calculates the sum of the given formula
(define (getsum n k sum)

  (cond

    ;end of recursion if the num < 5*k and returns the sum
    [(< n (expt 5 k)) sum]

    ;returns the function with k++ and added to sum n/5*k
    [else (getsum n (add1 k) (+ sum (floor (/ n (expt 5 k)))))]))

;function accepts lambda predicant
(define (trailing-zeros n)

  (λ (p) (p (getsum n 1 0))))


  