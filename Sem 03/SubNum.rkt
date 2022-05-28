#lang racket

;itterative reccursion
(define (numDigits num)

  (cond
    ;if the last digit is < 10 return 1
    [(< num 10) 1]

    ;if the last digit =10 returns 2
    [(= num 10) 2]

    ;returning the function with the argument / 10
    [(> num 10) (+ 1 (numDigits (floor (/ num 10))))]))


(define (calculating subNum num i)

  (cond

    ;end of recursion, if the count of the digits of num is = i and subNum != num
    [(and (= (numDigits num) i) (not (= subNum num))) "false"]

     ;end of recursion, if the count of the digits of num is = i and subNum = num
    [(and (= (numDigits num) i) (= subNum num)) "true"]

    ;we num % 10^i
    ;example: num:123 subNum:23 and i:2; 123%10^2 = 23 and 23=23
    ;we get the last digits based on the size of subNum
    [(= (remainder num (expt 10 i)) subNum) "true"]

    ;else dividing the num by 10
    [else (calculating subNum (floor (/ num 10)) i )]))

(define (sub-num? subNum num)

  ;to store the size of the subNum
  (define i (numDigits subNum))

  (cond
    
    ;if subNum > num error
    [(> subNum num) "the subNum is > than num"]

    ;else calculating, arguments are in absolute in case they are negative
    [else (calculating (abs subNum) (abs num) i)]))
    


    