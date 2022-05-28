#lang racket

(define (calculating elem list)

  (cond
    
    ;end of recursion if the list is empty
    [(null? list) #f]

    ;if the current element returns true
    [(= elem (car list)) #t]

    ;if the current element is != returns the function with removed first element from the list
    [(calculating elem (cdr list))]))

(define (elem-rec-with-if? elem list)

  (calculating elem list))