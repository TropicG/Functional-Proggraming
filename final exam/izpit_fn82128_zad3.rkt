#lang racket

;;creates a new list where the first element is argument to f
;;and the second element is argument to g
(define (makeNew xs f g newxs)

  (cond
    [(null? xs) newxs]
    [else (makeNew (cdr xs) f g (append newxs (list (list (f (caar xs)) (g (cadar xs))))))]))

;;gets the sum of all the elements in array
(define (sum xs count)

  (cond
    [(null? xs) count]
    [else (sum (cdr xs) (+ count (caar xs) (cadar xs)))]))

(define (helper xs)

  (sum xs 0))

(define (sumMappedTuple ts)

  (λ (f g) (helper (makeNew ts f g '()))))

