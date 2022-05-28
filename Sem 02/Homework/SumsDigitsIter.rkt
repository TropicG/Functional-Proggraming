#lang racket

(define (calculating num)
  (cond
    ;if the num is less than 10 returns the num
    [(< num 10)
     num]
    [else
     ; adds the num%10 plus the num/10 and so on
     (+ (remainder num 10) (calculating (floor(/ num 10))))]))

(define (sum-digits-iter num)
  
  (cond
    ;if the num is negative throws error
    [(< num 0)
     "num is negative"]

    ;if the num is less than 10 returns num
    [(< num 10)
     num]

    ;calculating
    [else
     (calculating num)]))
     