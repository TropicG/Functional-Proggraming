#lang racket

(define (calculating n lastDigit)

  (cond
    
    ;if n < 10 and lastDigit> n returns true
    [(and (< n 10) (< n lastDigit))
     #t]
    
    ;if n < 10 and n> lastDigit return false
    [(and (< n 10) (> n lastDigit))
     #f]
    
    ;if n%10 > lastDigit returns false
    [(> (remainder n 10) lastDigit)
     #f]
    [else
     
     ;if n&10 < lastDigit returns fucntion n/10 and gets the lastDigit
     (calculating (floor(/ n 10)) (remainder n 10))]))

(define (inc-digits? n)

  (cond
    ;if n is negative, makes the number positive and checks for accending order
    [(negative? n)
     (calculating (abs (floor(/ n 10))) (abs (remainder n 10)))]

    ;checks accending order
    [else
     (calculating (floor(/ n 10)) (remainder n 10))]))
  