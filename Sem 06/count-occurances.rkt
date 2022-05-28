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


;-------------------------------------- here i used a function i made from earlier program ------------------

(define (calculating2 sxs bxs size_sxs size_bxs count i)

  (cond

    ;if we have met the end of the list we throw count
    [(= i (- (+ size_bxs 1) size_sxs )) count]

    ;if the current pair is equal to the argument pair we return the function with increased count
    [(equal? sxs (get-sublist 0 (- size_sxs 1) bxs)) (calculating2 sxs (cdr bxs) size_sxs size_bxs (add1 count) (add1 i))]

    ;else we return the function with added index 
    [else (calculating2 sxs (cdr bxs) size_sxs size_bxs count (add1 i))]))


(define (count-occurrences sxs bxs)

  ;here we store the size of the longer list, the size of the smaller list, the count of the meets, and the current index
  (define size_sxs (length sxs))
  (define size_bxs (length bxs))
  (define count 0)
  (define i 0)

  ;it is calculating 2 since i used calculating in the upper function
  (calculating2 sxs bxs size_sxs size_bxs count i))