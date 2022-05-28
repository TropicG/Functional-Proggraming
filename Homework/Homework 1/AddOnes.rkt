#lang racket

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
(define (calculating num newnum len)

  (cond
    
    ;end of recursion, if the last digit is 9 then multiplies the newnumber by 100 to add 10
    ;for example: if num = 139 and 9 is the last digit then 24*100 = 2400 + 10 = 2410 
    [(and (< num 10) (= (getFirstDigit num len) 9)) (+ (* newnum 100) 10)]

    ;end of recursion, if the last digit is !=9 then multiplies the newnumber by 10 and adds the digit
    ;for example: if num = 124 , then 23*10 = 230 + 5 = 235
    [(and (< num 10) (not (= (getFirstDigit num len) 9))) (+ (* newnum 10) num 1)]

    ;if the current digit is 9, returns the function with num%10^len and the newnum multiplied by 100 + 10 and its len--
    ;for example: if num = 912, returns num = 912%10^(3-1)=12 and newnum = 0*100+10 = 10 and len--
    [(= (getFirstDigit num len) 9) (calculating (remainder num (expt 10 (- len 1))) (+ (* newnum 100) 10) (- len 1))]

    ;if the digits is != 9, returns the function with num%10^len and the newnum multiplied by 10 + firstDigit and its len--
    ;for example: if num = 523, returns num = 523%10(3-1) = 23 and newnum = 0*10+6 = 6 and len--
    [else (calculating (remainder num (expt 10 (- len 1))) (+ (* newnum 10) (getFirstDigit num len) 1) (- len 1))]))


(define (add-ones num)

  ;here we will store the new number
  (define newnum 0)

  ;storing the lenght of the number
  (define len (numDigits num))

  ;calculating the new number, if the num is negative it calculates its absolute value
  (calculating (abs num) newnum len))

  