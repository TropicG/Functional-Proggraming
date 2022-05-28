#lang racket

;defining itterative function which adss 1 to result and calls the function again
(define (my-length-iter list)
  (define (helper result left-over)
    (if (null? left-over)
        result
        (helper (add1 result) (cdr left-over))))
  (helper 0 list))


;defining recursive length function which adds 1 until the list is empty
(define (my-length-rec list)
  (if (null? list)
      0
      (add1 (my-length-rec (cdr list)))))


;uses the build in function for finding the length of the list
(define (my-length-proc list)
  (length list))