#lang racket

;num==newnum at the start then with each pass of the function, newnum is /10 so that it test every digit
(define (calculating num newnum sum)

  (cond

    ;end of recursion if the last number is 0
    [(and (< newnum 10) (= newnum 0) sum)]

    ;passes the function again if the current number is 0
    [(= (remainder newnum 10) 0) (calculating num (floor(/ newnum 10)) sum)]

    ;end of recursion if the last number is divisior of num and its added to sum
    [(< newnum 10) (= (remainder num newnum) 0) (+ sum newnum)]

    ;passes the function if the current number is divisor on the number 
    [(= (remainder num (remainder newnum 10)) 0) (calculating num (floor(/ newnum 10)) (+ sum (remainder newnum 10)))]

    ;passes the function if the current number is not divisor
    [else (calculating num (floor(/ newnum 10)) sum)]))
    


(define (sum-digit-divisors num)

  ;storring the sum
  (define sum 0)
  (calculating num num sum))