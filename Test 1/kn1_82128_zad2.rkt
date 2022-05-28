#lang racket

;creates a new list in which elements are the length of sub lists in xs
(define (getnewxs xs newxs)

  (cond

    ;end of recursion, if we reached the end of xs we return newxs
    [(empty? xs) newxs]

    ;retunrs the function with the rest of the xs and appends to new the size of the current sub list in xs
    [else (getnewxs (cdr xs) (append newxs (list (length (car xs)))))]))

;searches the missing number
(define (search xs next)

  (cond

    ;end of recursion, checks if the subtraction of the last two elements is 1
    ; and if its not returns the current number + 1 (aka the missing number)
    [(and (= (length xs) 2) (not (= (- next (car xs)) 1))) (+ (car xs) 1)]

    ;end of recursion, checks if the subtraction of the last two elements is 1
    ;and if its 1 returns text 
    [(and (= (length xs) 2) (= (- next (car xs)) 1)) "No such number"]

    ;if the subtraction of the current and next is != 1 then returns the current element + 1
    [(not (= (- next (car xs)) 1)) (+ (car xs) 1)]

    ;returns the function with the rest of the element and the second element of the returned list
    [else (search (cdr xs) (third xs))]))

;checks if the lists inside the list are empty
(define (check xs)

  (cond

    ;end of recursion if we have checked everything returns false
    [(empty? xs) #f]

    ;if the current list is empty returns true
    [(empty? (car xs)) #t]

    ;else returns the function with the rest elements
    [else (check (cdr xs))]))
    
(define (get-missing-length xss)

  (cond
    [(empty? xss) "Empty list!"]
    [(check xss) "Empty list!"]
    [else
  (search (sort (getnewxs xss '()) <) (second (sort (getnewxs xss '()) <) ))]))