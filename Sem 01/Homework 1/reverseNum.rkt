#lang racket

(define (helper_rev num helper_num)
  (cond

    ;end of recursion, multiples the reversed num by 10 and adds the last digit
    [(< num 10)
     (+ (* helper_num 10) num)]
    
    [else
     ;gets the remainder of num and 10
     (define remain (remainder num 10))

     ;returns the function with the num divided by 10
     ;and helper_num multiplied by 10 and adding the last digit of num
     (helper_rev (floor (/ num 10)) (+ (* helper_num 10) remain ))]))

(define (rev num)

  ;here we will store the reversed num
  (define helper_num 0)
  
  (cond
    ;if the num is negative throws error
    [(> 0 num)
     "The number cant be negative"]
    
    ;if the num is less than 10 it returns the number
    [(< num 10)
     num]

    ;calculating
    [else
     (helper_rev num helper_num)]))
    