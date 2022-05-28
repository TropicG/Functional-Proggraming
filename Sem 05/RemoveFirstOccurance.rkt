#lang racket

(define (calculating elem list)

  (cond
    ;end of recursion when the list is empty
    [(null? list) "The list is empty"]

    ;when the current elem is = to the wanted element, returns the rest of the list
    [(equal? (car list) elem) (cdr list)]

    ;else when gets the first element and . the other elements
    [else (cons (car list) (calculating elem (cdr list)))]))

(define (remove-first-proc elem list)

  (calculating elem list))