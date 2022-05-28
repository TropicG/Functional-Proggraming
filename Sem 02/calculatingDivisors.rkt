#lang racket

(define (calculating n i)

  (cond
    
    ;if n=i returns 0 since n%n=0
    [(= n i)
     1]
    
    ;if n%i=0 addss 1 plus the funcion
    [(= (remainder n i) 0)
     (+ 1 (calculating n (add1 i)))]
    
    ;if n%i!=0 addss 0 plus the function
    [else
     (+ 0 (calculating n (add1 i)))]))

(define (count-divisors n)

  ;defining the counting integer
  (define i 1)

  (cond
    ;if n is zero returns 0
    [(= n 0)
     0]

    ;if negative throws exception
    [(negative? n)
     "N cant be negative"]

    ;else counting the divisors
    [else
     (calculating n i)]))