#lang racket

;checks if elem is inside
(define (inside? xs elem)

  (cond

    ;if we look at the last element of xs and elem == last element xs then we return true
    [(and (= (length xs) 1) (= (car xs) elem)) #t]

    ;else we return false
    [(and (= (length xs) 1) (not (= (car xs) elem))) #f]

    ;if the current element is == to elem return true
    [(= (car xs) elem) #t]

    ;else we return the list with the rest of the items
    [else (inside? (cdr xs) elem)]))

;we add all elements from ys that are not present in xs
(define (calculating xs ys)

  (cond

    ;end of recursion if the second list is empty we return the first list
    [(empty? ys) xs]

    ;if the current ys elements is not inside xs we returns the function with this element appended to xs and the rest elements of ys
    [(not (inside? xs (car ys))) (calculating (append xs (list (car ys))) (cdr ys))]

    ;else we return the function with xs unchanged and the rest of ys
    [else (calculating xs (cdr ys))]))
   
(define (set-union xs ys)

  ;after we are returned the list with all the items we sort it
  (sort (calculating xs ys) <))