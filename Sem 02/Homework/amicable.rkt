#lang racket

(define (divSum num i sum)

  (cond
    ;end of recursion if the i is higher than num
    [(< num i)
     sum]
    
    ;if num%i==0 adds i to the sum
    [(= (remainder num i) 0)
     (divSum num (add1 i) (+ sum i))]
    
    ;if num%i!=0 doesnt add i to the sum
    [else
     (divSum num (add1 i) sum)]))
    
(define (amicable? a b)

  ;defining the counting num
  (define i 1)

  ;defining the sum of the divisors
  (define sum 0)
  
  (cond

    ;if a is negative throws exception
    [(negative? a)
     "A cant be negative"]

    ;if b is negative throws exception
    [(negative? b)
     "B cant be negative"]
    [else

     ;runs recursion to check if they are equal
     (if (= (divSum a i sum) (divSum b i sum))
         #t
         #f)]))
    