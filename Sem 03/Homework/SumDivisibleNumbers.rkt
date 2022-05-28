#lang racket

(define (SumDigits num digitsum)

  (cond
    ;if the num is < 10 adds the last digits
    [(< num 10) (+ digitsum num)]

    ;adds the current digit and num/10
    [else (SumDigits (floor(/ num 10)) (+ digitsum (remainder num 10)))]))

(define (calculating start finish k sum)

  ;storing the sum of the digits
  (define digitsum 0)
  
  
  (cond
    ;if the start is > finish returns the sum
    [(> start finish) sum]

    ;if the digits sum is divisible by k then returns the function with ++start and sum+start
    [(= (remainder (SumDigits start digitsum) k) 0) (calculating (add1 start) finish k (+ sum start))]

    ;else returns the function with ++start
    [else (calculating (add1 start) finish k sum)]))

(define (sum-divisible-numbers start finish k)

  ;storing the sum of the nums
  (define sum 0)

  (cond
    ;if the start < finish calculates the function with the start reaching to the finish
    [(< start finish) (calculating start finish k sum)]

    ;if the finish< start calculates the function with the finish reaching to the start
    [else (calculating finish start k sum)]))