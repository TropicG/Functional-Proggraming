#lang racket

(define (inside xs elem)

  (cond

    ;;end of recursion; if the element is empty we return false
    [(null? xs) #f]

    ;;if the first element from xs is = to elem we return true
    [(= (car xs) elem) #t]

    ;;else we return the rest of the list 
    [else (inside (cdr xs) elem)]))

(define (set-union xs xss)

  (cond

    ;;end of recursion; if the second list is empty we sort in ascending order the first list
    [(null? xss) (sort xs <)]

    ;;if the first element in xss is not inside xs we return the function with appended xss element to xs and we the rest of xss
    [(not (inside xs (car xss))) (set-union (append xs (list (car xss))) (cdr xss))]

    ;;we return the rest of xss
    [else (set-union xs (cdr xss))]))