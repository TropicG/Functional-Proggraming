#lang racket

;deletes the elements in the begining
(define (remove-begin i xs num)

  (cond

    ;end of recursion, when the num of removed is equal to the position we need to remove
    [(= i num) xs]

    ;if the num of removed is not euqal to the position we need to remove we return the function 
    [else (remove-begin i (cdr xs) (add1 num))]))



;here we add the rest of the elements between [start,end] to a new list and then we return the newlist
(define (calculating j num xs newxs)

  (cond

    ;end of recursion if item added is == to j
    [(= j num) newxs]

    ;if not retuns the function with added a new element in the new list
    [else (calculating j (add1 num) (cdr xs) (append newxs (list (car xs))))]))


(define (get-sublist i j xs)

  (cond

    ;error checking
    [(< i 0) "the start index cant be lower than 0"]
    [(< j 0) "the end index cant be lower than 0"]
    [(< j i) "the end index cant be lower than start index"]

    ;calculates the string
    [else (calculating (- j i) -1 (remove-begin i xs 0) '())]))