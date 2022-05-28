#lang racket

(define (calculating smallest list)

  (cond

    ;end of recursion, if the list is empty returns the current smallest
    [(null? list) smallest]

    ;if the first number of the list is < smallest, returns the function and the smallest is the first element from the list
    [(> smallest (car list)) (calculating (car list) (cdr list))]

    ;else retunrs the function with removed an element from the list and the smallest is kept
    [else (calculating smallest (cdr list))]))

(define (get-smallest-rec list)


  ;storing the smallest element in the list
  (define smallest (car list))
  
  (cond
    
    ;if the list is empty throws error
    [(null? list) "The list is empty"]

    ;calculating the list
    [else (calculating smallest list)]))