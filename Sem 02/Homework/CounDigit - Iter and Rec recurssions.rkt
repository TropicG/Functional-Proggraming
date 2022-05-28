#lang racket

(define (calculating_rec num digits)
  (cond
    ;end of recursion, if num is less than 10 adds 1 to digits
    [(< num 10)
     (+ digits 1)]
    [else
     ;devides num by 10 and adds one digit
     (calculating_rec (round (/ num 10)) (+ digits 1))]))

;reccursive solve to the problem
(define (count-digit-rec num)

  ;storring the number of the digits
  (define digits 0)
  
  (cond
    ;if the digits is less than 0 throws error
    [(< num 0)
     "The number was negative"]

    ;if the digit is less than 10 returns 1
    [(< num 10)
     1]
    [else
     ;calculating
     (calculating_rec num digits)]))


(define (calculating_iter num)
  (cond
    ;end if recursion, returns 1 if the num is less than 10
    [(< num 10)
     1]
    [else
     ;adds 1 and calls the funcion with divided num by 10
     (+ 1 (calculating_iter (floor(/ num 10))))]))

(define (count-digit-iter num)

  ;storing the digits
  (define digits 0)

  (cond
    ;if the num is less than 0 throw error
    [(< num 0)
     "The number was negative"]
    ;if the num is less than 10 returns 1
    [(< num 10)
     1]
    [else
     ;calls the calculating function for this recursion
     (calculating_iter num)]))

     