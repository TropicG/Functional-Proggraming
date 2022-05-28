#lang racket++

(define (calculating num digit times)

  (cond

    ;if the last digit is the same as the given digits returns ++times
    [(and (< num 10) (= num digit)
          (add1 times))]
    
    ;if the last digit is the same as the given digits returns times
    [(and (< num 10) (not (= num digit))
          times)]
    
    ;if the remainder of the number is the same as the digit returns the function with ++times 
    [(= (remainder num 10) digit)
     (calculating (floor(/ num 10)) digit (add1 times))]

    ;if the remainder of the number is the same as the digit returns the function with times 
    [else
     (calculating (floor(/ num 10)) digit times)]))

(define (count-occurences num digit)

  ;counting the times
  (define times 0)
  
  (cond

    ;if num negative throws error
    [(negative? num)
     "The num is negative"]

    ;if digit negative throws error
    [(negative? digit)
     "The digit is negative"]

    ;calculating
    [else
     (calculating num digit times)]))