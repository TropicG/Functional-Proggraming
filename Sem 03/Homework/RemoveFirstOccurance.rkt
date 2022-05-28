#lang racket

;finding the location of the digit we will remove
(define (loc num digit i)

  (cond
    ;if the last digit of num is not equal to digit returns false
    [(and (< num 10) (not (= num digit))) #f]

    ;if the last digit is equal to the adds 1 to i
    [(and (< num 10) (= num digit) (+ i 1))]

    ;if some digit is equal to the digit returns i+1
    [(= (remainder num 10) digit) (+ i 1)]

    ;if the current digit is not equal to the digit continues the reccursion
    [else (loc (floor(/ num 10)) digit (add1 i))]))

(define (remove-first-occurance num digit)

  ;storing the location of the digit we will remove
  (define i 0)
  
  (cond

    ;if loc returns error show error
    [(not (loc num digit i)) (error "There is no such number")]
    [else

     ;stores the digits after the to be removed digit
     ;for example: num 12345 digit 3, newNum wiil be 12345 / 10^3 = 12
     (define newNum (floor (/ num (expt 10 (loc num digit i) ))) )

     ;gets the digits before the to be removed digit
     ;for example: num 12345 digit 3, lastDigits will be 12345% 10^2 = 45
     (define lastDigits (remainder num (expt 10 (- (loc num digit i) 1))))

     ;multiplies newNum* 10^i-1 and adds the last digits
     (+ (* newNum (expt 10 (- (loc num digit i) 1))) lastDigits)]))
    