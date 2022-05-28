#lang racket

(define (calculating num max)

  (cond
    ;end of recursion, if max > num%10 returns max
    [(and (< num 10) (< (remainder num 10) max)) max]
    
    ;end of recursion, if max < num%10 return num%10
    [(and (< num 10) (> (remainder num 10) max)) (remainder num 10)]
    
    ;if max > num%10 returns function with num/10 and max
    [(< (remainder num 10) max) (calculating (floor(/ num 10)) max)]
    
    ;if max < num%10 returns function with num/10 and max = num%10
    [else (calculating (floor(/ num 10)) (remainder num 10))]))

(define (find-max num)

  ;storing the max digit
  (define max 0)
  
  (cond
    ;returns num if num < 10
    [(< num 10) num]
    ;gets the max digit
    [else (calculating num max)]))

   
	
