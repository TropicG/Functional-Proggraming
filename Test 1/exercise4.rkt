#lang racket

;gets the product of the digits of a given number
(define (proddigit num prod)

  (cond

    ;end of recursion, multiplies the last digit to the argument prod
    [(< num 10) (* prod num)]

    ;else returns the function with the number/10 and the prod * last digit of num
    [else (proddigit (floor(/ num 10)) (* prod (remainder num 10)))]))

;gets the production of the digit of num until num is < 10 then all the previous numbers are added to pair with their length
(define (helper num xs)

  (cond

    ;end of recursion, cons the list with all the prod of digit until now and pairs it with the size of the list
    [(< num 10) (cons xs (length xs))]

    ;returns the function with the production of the digits of the current num and adding the production of the digits of num in the list
    [else (helper (proddigit num 1) (append xs (list (proddigit num 1))))]))


(define (persistance n)

  (cond

    ;parameter check
    [(< n 0) "N cant be lower than 0"]

    ;if there is a single digit it returns the pair
    [(< n 10) (cons (list n) 1)]

    [else (helper n '())]))
