#lang racket

(require racket/trace)

(define (met num digit)

  (cond
    ;end of recursion, if the num and digit are equal adds 1
    [(and (< num 10) (= num digit) 1)]

    ;end of recursion, if the num and digit are not equal adds 0
    [(and (< num 10) (not (= num digit)) 0)]

    ;if the remainder of the num is equal to the digits, returns the function with added 1
    [(= (remainder num 10) digit) (+ 1 (met (floor(/ num 10)) digit))]

    ;if the remainder of the num is not equal to the digits, returns the function with added 0
    [else (+ 0 (met (floor(/ num 10)) digit))]))

;gets the sum of the digits
(define (sumDigits num)

  (cond
    [(< num 10) num]
    [else (+ (remainder num 10) (sumDigits (floor(/ num 10))))]))

;checking if the digits is there in the num
(define (inside? num other)

  (cond
    [(and (< num 10) (= num other)) #t]
    [(and (< num 10) (not (= num other))) #f]
    [(= (remainder num 10) other) #t]
    [else (inside? (floor(/ num 10)) other)]))


;calculates the number of times
(define (calculating x i d count)

  (cond
    ;if the left border bypasses x then returns the sum of the digits
    [(< x i) (sumDigits count)]

    ;if the digit is inside, returns the function with left border++ and adds the times of met in count
    [(inside? i d) (calculating x (add1 i) d (+ (met i d) count))]

    ;if the digit is !inside, returns the function with the left border++ and the count is unchanged
    [else (calculating x (add1 i) d count)]))

(define (sum-counts-iter x d)

  ;the left border
  (define i 1)

  ;the times d is met
  (define count 0)

  (cond
    ;if x < 1 invalid argument
    [(< x 1) "X cant be below 1"]
    [(< x d) 0]

    ;calculating the times met
    [else (calculating x i d count)]))
    



    