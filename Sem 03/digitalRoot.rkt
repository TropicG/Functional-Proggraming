#lang racket

(define (sumDigits num sum)

  (cond
    ;if num < 10 adds the last digits to the sum
    [(< num 10) (+ sum num)]

    ;returns the function with the num/10 and the last digits added to the sum
    [else (sumDigits (floor (/ num 10)) (+ sum (remainder num 10)))]))

(define (calculating num sum)

  (cond
    ;if the sum is < 10 returns the sum of the digits
    [(< (sumDigits num sum) 10) (sumDigits num sum)]

    ;returns the recursion with the new number being the sum of the digits and the sum is 0
    [else (calculating (sumDigits num sum) 0)]))

(define (digital-root num)

  ;sums of digits
  (define sum 0)
  
  (cond
    ;if the num is negative or 0 throws error
    [(or (negative? num) (= num 0)) "invalid argument"]
    
    ;calculates the digital root
    [else (calculating num sum)]))



  



