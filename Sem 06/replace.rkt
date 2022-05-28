#lang racket

;searches if the element is in the dic
(define (indic? dic elem)

  (cond

    ;end of recursion if the dic is empty returns false
    [(empty? dic) #f]

    ;if the first element first part is == elem returns true
    [(equal? (caar dic) elem) #t]

    ;else returns the function with the rest of the list
    [else (indic? (cdr dic) elem)]))


;gets the part that we should replace 
(define (getdic dic elem)

  (cond
    ;if the first of first element is == to the elem returns the second part of the first element
    [(equal? (caar dic) elem) (cdar dic)]

    ;else returns the list
    [else (getdic (cdr dic) elem)]))




(define (calculating xs dic newxs)

  (cond

    ;ends of recursion, if we got to the end of the list we return the newly formated list
    [(empty? xs) newxs]

    ;if the current elem is in the dic it returns the function with newxs being appended for that element part in the dictionary
    [(indic?  dic (car xs)) (calculating (cdr xs) dic (append newxs (list (getdic dic (car xs)))))]

    ;else returns the function with the rest of the list with appending current elem
    [else (calculating (cdr xs) dic (append newxs (list (car xs))))]))



(define (replace xs dic)

  (calculating xs dic '()))