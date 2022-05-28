#lang racket

(define (calculating list num)

  (cond

    ;end of recursion, we sum the last digit to the whole num*10
    [(= (length list) 1) (+ (* num 10) (car list))]

    ;if there is a zero in the list we only return the function with num*10 and the rest of the list
    [(= (car list) 0) (calculating (cdr list) (* num 10))]

    ;else we returns the rest of the list with (num*10) + current element from the list
    [else (calculating (cdr list) (+ (* num 10) (car list)))]))


(define (rev-fold list)

  ;here we will store the number
  (define num 0)

  ;calculating the number
  (calculating (reverse list) num))