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
(define (calculating_task1 x i d count)

  (cond
    ;if the left border bypasses x then returns the sum of the digits
    [(< x i) (sumDigits count)]

    ;if the digit is inside, returns the function with left border++ and adds the times of met in count
    [(inside? i d) (calculating_task1 x (add1 i) d (+ (met i d) count))]

    ;if the digit is !inside, returns the function with the left border++ and the count is unchanged
    [else (calculating_task1 x (add1 i) d count)]))

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
    [else (calculating_task1 x i d count)]))




;from here on goes task 2





;gets the size of the number
(define (numDigits num)
  (cond
    [(< num 10) 1]
    [else (+ 1 (numDigits (floor(/ num 10))))]))


;gets the first digit of the number
;for example: if num = 134 then 134/10^(len) , len its lenght
(define (getFirstDigit num len)
  (floor(/ num (expt 10 (- len 1)))))

;calculating the proccess
(define (calculating_task2 num newnum len)

  (cond
    
    ;end of recursion, if the last digit is 9 then multiplies the newnumber by 100 to add 10
    ;for example: if num = 139 and 9 is the last digit then 24*100 = 2400 + 10 = 2410 
    [(and (< num 10) (= (getFirstDigit num len) 9)) (+ (* newnum 100) 10)]

    ;end of recursion, if the last digit is !=9 then multiplies the newnumber by 10 and adds the digit
    ;for example: if num = 124 , then 23*10 = 230 + 5 = 235
    [(and (< num 10) (not (= (getFirstDigit num len) 9))) (+ (* newnum 10) num 1)]

    ;if the current digit is 9, returns the function with num%10^len and the newnum multiplied by 100 + 10 and its len--
    ;for example: if num = 912, returns num = 912%10^(3-1)=12 and newnum = 0*100+10 = 10 and len--
    [(= (getFirstDigit num len) 9) (calculating_task2 (remainder num (expt 10 (- len 1))) (+ (* newnum 100) 10) (- len 1))]

    ;if the digits is != 9, returns the function with num%10^len and the newnum multiplied by 10 + firstDigit and its len--
    ;for example: if num = 523, returns num = 523%10(3-1) = 23 and newnum = 0*10+6 = 6 and len--
    [else (calculating_task2 (remainder num (expt 10 (- len 1))) (+ (* newnum 10) (getFirstDigit num len) 1) (- len 1))]))


(define (add-ones num)

  ;here we will store the new number
  (define newnum 0)

  ;storing the lenght of the number
  (define len (numDigits num))

  ;calculating the new number, if the num is negative it calculates its absolute value
  (calculating_task2 (abs num) newnum len))



    