#lang racket

;;gets every element in the list except the last one
(define (firsts xs newxs)
  (cond
    [(= (length xs) 1) newxs]
    [else (firsts (cdr xs) (append newxs (list (car xs))))]))

;;gets the last element in the list
(define (last xs)
  (cond
    [(= (length xs) 1) (flatten xs)]
    [else (last (cdr xs))]))

;;places the element in the 2nd position in the list
(define (place index xs elem newxs)
  (cond
    ;;if the list is empty we return a list with one element which is newxs
    [(null? xs) (list newxs)]
    ;;if we are at the index we want to place elem we append elem to newxs and we dont change xs
    [(= index 1) (place (+ index 1) xs elem (append newxs (list elem)))]
    ;;if this is not the index we want to place we append the car xs element to newxs
    [else (place (+ index 1) (cdr xs) elem (append newxs (list (car xs))))]))

;;gets every single element from first and does place with the first element from last
;;then at the end the newly appended list is added to newxs
(define (helper first last newxs)
  (cond
    [(and (null? first) (null? last)) newxs]
    [else (helper (cdr first) (cdr last) (append newxs (place 0 (car first) (car last) '())))]))

(define (copyMat xs)

  (helper (firsts xs '()) (last xs) '()))

