#lang racket


(define (helper xs predicate newxs)

  (cond

    ;;end of recursion; returns the newly created xs
    [(null? xs) newxs]

    ;;if the current element returns true from predicate we return the function with the rest of xs and appended new element to newxs
    [(predicate (car xs)) (helper (cdr xs) predicate (append newxs (list (car xs))))]

    ;;else we just return the rest of the list
    [else (helper (cdr xs) predicate newxs)]))

(define (where xs predicate)

  (helper xs predicate '()))