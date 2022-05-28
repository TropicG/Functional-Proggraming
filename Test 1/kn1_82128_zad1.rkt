#lang racket

;checks if a digit is inside of list
(define (inside? xs digit)

  (cond

    ;end of recursion if we reached the end of the list
    [(empty? xs) #f]

    ;end of recursion of we found the digit in the list
    [(= (caar xs) digit) #t]

    ;returns the function with the rest of the list
    [else (inside? (cdr xs) digit)]))

;gets the times met of a digit
(define (getmet xs digit)

  (cond

    ;if the digit is equal to the left side of the pair in a list it gets the right part of the pair
    [(= (caar xs) digit) (cdar xs)]

    ;returns the function with the rest of the list
    [else (getmet (cdr xs) digit)]))


;calculates the times met of a digit in a number
(define (calculating num xs)

  (cond

    ;if we reached the end of the number we return the list
    [(= num 0) xs]

    ;if the last digit is not present in the list we retun the function with num/10 and appending to the list the pair
    [(not (inside? xs (remainder num 10))) (calculating (floor (/ num 10)) (append xs (list (cons (remainder num 10) 1))))]

    ;if the last digit is present in the list we return the function with num/10
    ;and we remove the list the pair with the current digit and add a new now with the current digit but the right part of the pair is increase by 1
    [(inside? xs (remainder num 10)) (calculating (floor(/ num 10)) (append (remove (cons (remainder num 10) (getmet xs (remainder num 10))) xs) (list (cons  (remainder num 10)  ( + (getmet xs (remainder num 10)) 1)))))]))
                                          

(define (get-distribution n)

  (cond
    [(< n 1) "The number cant be lower than 1"]
    [else (calculating (* n n) '())]))
  