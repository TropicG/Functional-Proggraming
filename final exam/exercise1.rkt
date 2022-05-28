#lang racket

;; gets the size of a number
(define (size num)

  (cond

    ;;end of recursion, if num < 10 we return 1
    [(< num 10) 1]

    ;;else we add 1 and return the function with the num divided
    [else (+ 1 (size (floor(/ num 10))))]))

;;getting the digits from left to right
(define (helper index size num newnum)

  (cond
    ;;if the index reached the size of the num we return the newnum
    [(= index  size) newnum]

    ;;since from left to right the needed digits will be on odd position
    ;; i use (= (remainder index 2) 1)
    ;; returning the function we increased index divided number and the digit aded to newnum
    [(= (remainder index 2) 1) (helper (+ index 1) size (floor (/ num 10)) (+ (* newnum 10) (remainder num 10)))]

    ;;else we return the function with increased index and nm divied by 10
    [else (helper (+ index 1) size (floor (/ num 10)) newnum)]))


(define (every-other num)

  (helper 0 (size num) num 0 ))
