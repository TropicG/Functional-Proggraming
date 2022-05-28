#lang racket

;finds the sum of the digits of a num
(define (sumDigit num)

  (cond
    [(< num 10) num]

    ;takes each digits and sums them in recursive tail
    [else (+ (remainder num 10) (sumDigit (floor(/ num 10))))]))


;finds the numbers of which their digit%k when we ++a until we a>b
(define (calculating a b k sum)

  (cond
    ;end of recursion 
    [(> a b) sum]

    ;if the digits if a %k==0 then we returned the function with a++ and sum+a
    [(= (remainder (sumDigit a) k) 0) (calculating (add1 a) b k (+ sum a))]

    ;else we return the function with just ++a
    [else (calculating (add1 a) b k sum)]))

(define (sum-sum-digit a b k)

  (cond
    [(or (< a 0) (< b 0) (= k 0) (< k 0)) "Invalid arguments"]
    [else (calculating a b k 0)]))