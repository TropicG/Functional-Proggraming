#lang racket


;;checks if the digits of a number are in descending order
(define (descendingOrder num last)

  (cond

    ;;end of recursion, if the last digit is bigger than the prev we return false
    [(and (< num 10) (> num last)) #f]

    ;;end of recursion, if the last digit is smaller than the prev we return true
    [(and (< num 10) (< num last)) #t]

    ;;if the current digit is bigger than the prev we return false
    [(> (remainder num 10) last) #f]

    ;;else we divide the num by then and we take the current digit as previous
    [else (descendingOrder (floor(/ num 10)) (remainder num 10))]))

(define (helper a b sum)

  (cond

    ;;end of recursion, we return sum when we checked all the numbers from the range
    [(> a b) sum]

    ;;if the current number has the descendingOrder we return the function with increased a and a added to the sum
    [(descendingOrder (floor(/ a 10)) (remainder a 10)) (helper (+ a 1) b (+ sum a))]

    ;;else we increase just a
    [else (helper (+ a 1) b sum)]))

(define (sum-numbers a b)

  (helper a b 0))