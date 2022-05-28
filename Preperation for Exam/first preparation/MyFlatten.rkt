#lang racket


(define (my-flatten xss)

  (cond

    ;end of recursion of a list
    [(null? xss) xss]

    ;if the current element is a list it appends the elements of the given list to the other part of the list
    [(list? (car xss)) (append (my-flatten (car xss)) (my-flatten (cdr xss)))]

    ;if this is only one symbol cons the current symbol to the list
    [else (cons (car xss) (my-flatten (cdr xss)))]))