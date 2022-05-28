#lang racket


(define (removing elem list newList)

  (cond
    ;end of recursion, if the last element of the list is == to the element returns the newList 
    [(and (= (car list) elem) (= (length list) 1)) (cons newList '())]

    ;end of recursion, if the last element of the list is != to the elem returns the newList with the first elem from list
    [(and (not (= (car list) elem)) (= (length list) 1)) (const newList (car list))]

    ;if the current element is == to elem returns the function with the original list withouth the first element
    [(= (car list) elem) (removing elem (cdr list) newList)]

    ;if the current element is != to elem returns the function with appended newList with the first element from the list
    [(not (= (car list) elem)) (removing elem (cdr list) (cons newList (car list)))]))
  

  

(define (remove-all elem list)

  ;here we will store the new list
  (removing elem list '()))
  