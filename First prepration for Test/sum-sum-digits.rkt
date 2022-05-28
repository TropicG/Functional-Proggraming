#lang racket


(define (sumDigits num)

  (cond

    ;;end of recursion, if the num is below 10 we return the num
    [(< num 10) num]

    ;;else sum the last digit with 
    [(+ (remainder num 10) (sumDigits (floor(/ num 10))))]))

(define (helper a b k sum)

  (cond

    ;;end of recursion, if we reached the end of the range we return the sum
    [(> a b) sum]

    ;;if the sum of the digits of the current number we return the function with increased a and a added to sum
    [(= (remainder (sumDigits a) k) 0) (helper (+ a 1) b k (+ sum a))]

    ;;we return the function with increased sum
    [else (helper (+ a 1) b k sum)]))

(define (sum-sum-digits a b k)

  (helper a b k 0))


  