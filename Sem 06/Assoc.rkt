#lang racket

(define (assoc pos xs)

  (cond
    
    ;end of recursion if the list is empty
    [(empty? xs) "Your key was not found"]

    ;if we find the given key we output the text
    [(= pos (caar xs)) (cdar xs)]

    ;else we pass the function with the rest keys
    [else (assoc pos (cdr xs))]))