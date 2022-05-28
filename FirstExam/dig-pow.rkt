#lang racket

;calculates the length of a num
(define (numlength n)

  (cond
    [(< n 10) 1]
    [else (+ 1 (numlength (floor(/ n 10))))]))

;calculates the sum of the weird formula
(define (sumdigits n p sum)

  (cond

    ;one important note is that we start with the most right digit with the highest value of p
    ;then we subtract till we get to the most left digit

    ;end of recursion if we got the the last digit
    [(< n 10) (+ sum (expt n p))]

    ;else we return the function with n/10 p-- and added to the sum
    [else (sumdigits (floor(/ n 10)) (sub1 p) (+ sum (expt (remainder n 10) p)))]))


;adds to k until n*k is == newnum
(define (calculating newnum n k)

  (cond

    ;if n*K is higher than the new number we return -1
    [(< newnum (* n k)) -1]

    ;if the current number is == to n*k
    [(= newnum (* n k)) k]

    ;else we return the function with k++
    [else (calculating newnum n (add1 k))]))


(define (dig-pow n p)

  (cond
    [(or (< n 0) (< p 0)) "Invalid argumnet"]
    [else

     ;calculates new num
     (define newnum (sumdigits n (+ p (- (numlength n) 1)) 0))

     ;finds k
     (calculating newnum n 0)]))

  