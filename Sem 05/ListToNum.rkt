#lang racket

(define (calculating list size num)

  (cond
    ;end of recursion, if we reached the last element of the list we multiply the num by 10 and add the last digit
    [(= size 1) (+ (* num 10) (car list))]

    ;if we havent reach the end, we call the function with the rest of the list and the num is * 10 + first element in the list
    [else (calculating (cdr list) (sub1 size) (+ (* num 10) (car list)))]))

(define (xs-to-num list)

  ;storing the size of the list
  (define size (length list))

  ;here we will store the number
  (define num 0)

  ;making the calculation
  (calculating list size num))