#lang racket

(define (leap-year-one-line? num)
  (cond
    ;checks if num is string
   [(string? num)
    
    ;shows error
    "You have typed a string, it should be number"]
   
    ;checks if num is below 0
   [(< num 0)
    
    ;shows error
    "You have typed negative number, it should be positive"]
   
   ;checks if the year is leap
   [(or (= (remainder num 400) 0) (and (=(remainder num 4) 0) (not (=(remainder num 100) 0))))
    "The year is leap"]
   
    [else
     "The year is not leap"]))


(define (is-leap-year-guards? num)
  (cond
     ;checks if num is string
   [(string? num)
    
    ;shows error
    "You have typed a string, it should be number"]
   
    ;checks if num is below 0
   [(< num 0)
    
    ;shows error
    "You have typed negative number, it should be positive"]
   
    ;checks if num is divided by 400
   [(=(remainder num 400) 0)
    "The year is leap"]

   ;checks if num is divided by 100
   [(=(remainder num 100) 0)
    "The year is not leap"]

   ;checks  if num is divided by 4
   [(=(remainder num 4) 0)
    "The year is leap"]

   [else
    "The year is not leap"]))