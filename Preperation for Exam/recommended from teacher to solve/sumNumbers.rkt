#lang racket

(define (descending num lastDigit)

  (cond
    ;end of recursion, on the last digit checks if the previous digit is equal or smaller
    [(and (< num 10) (>= num lastDigit)) #t]

    ;end of recursion, on the last digit checks if the previous digit is equal or higher
    [(and (< num 10) (< num lastDigit)) #f]

    ;checks if the last digit is higher than the other digit
    [(< (remainder num 10) lastDigit) #f]

    ;returns the funcion if the last digit is smaller than the next one
    [else (descending (floor(/ num 10)) (remainder num 10))]))


(define (calculating x y sum)

  (cond

    ;if x>y returns the sum, since we add 1 to x
    [(> x y) sum]
    
    ;if the current x is in descending order it returns the function with added 1 and adds x to sum
    [(descending (floor(/ x 10)) (remainder x 10)) (calculating (add1 x) y (+ sum x))]

    ;else returns the funcion with added 1 
    [else (calculating (add1 x) y sum)]))

(define (sum-numbers x y)

  ;storing the sum
  (define sum 0)

  (cond
    [(< x y) (calculating x y sum)]

    ;if y<x switches place of x and y
    [else (calculating y x sum)]))
  


  