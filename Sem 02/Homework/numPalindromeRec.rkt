#lang racket

(define (rev num helper_num)
  (cond

    ;end of recursion, multiples the reversed num by 10 and adds the last digit
    [(< num 10)
     (+ (* helper_num 10) num)]
    
    [else
     ;gets the remainder of num and 10
     (define remain (remainder num 10))

     ;returns the function with the num divided by 10
     ;and helper_num multiplied by 10 and adding the last digit of num
     (rev (floor (/ num 10)) (+ (* helper_num 10) remain ))]))



(define (calculating_to_b a b sum)

  (define helper_num 0)

  (cond
    
    [(> a b)
     sum]
    
    [(= a (rev a helper_num))
     (calculating_to_b (add1 a) b (add1 sum))]
    
    [else
     (calculating_to_b (add1 a) b sum)]))
     



(define (calculating_to_a a b sum)

  (define helper_num 0)

  (cond
    [(> b a)
     sum]
    
    [(= b (rev b helper_num))
     (calculating_to_a a (add1 b) (add1 sum))]
    
    [else
     (calculating_to_a a (add1 b) sum)]))


(define (num-palindromes-rec a b)

  (define sum 0)
  (cond
    [(negative? a)
      "a cant be negative"]
    [(negative? b)
     "b cant be negative"]
    [(< a b)
     (calculating_to_b a b sum)]
    [else
     (calculating_to_a a b sum)]))
