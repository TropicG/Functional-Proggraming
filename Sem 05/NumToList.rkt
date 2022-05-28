#lang racket

;getting the lenght of a given num
(define (lenght num)
  (cond
    [(< num 10) 1]
    [else (+ 1 (lenght (floor(/ num 10))))]))

(define (calculating num lenght list)

  (cond

    ;end of recursion, if we reached the last digit of the num we add the digit directly
    [(< num 10) (cons list num)]

    ;if we have not, we return the function with the num%10^(lenght-1) length -- and the first digit of the num is added to the list
    [else
     (calculating (remainder num (expt 10 (- lenght 1))) (- lenght 1) (cons list (floor(/ num (expt 10 (- lenght 1))))))]))

(define (num-to-xs num)

  (calculating (abs num) (lenght (abs num)) '()))

  