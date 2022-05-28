#lang racket

(define (calculating-growth upSpeed downSpeed desiredHeight height days)

  ;if the total height is increased during the day and it reaches the desired height
  ;then it adds one day
  (if (<= desiredHeight (+ upSpeed height))
      (+ days 1)
     (calculating-growth upSpeed downSpeed desiredHeight (- (+ height upSpeed) downSpeed) (add1 days))))

(define (growing-plant upSpeed downSpeed desiredHeight)

  ;storing the number of days
  (define days 0)

  ;storing the total height of the plant
  (define height 0)
  (cond
    
    ;check for negative
   [(negative? upSpeed)
    "The speed of the growth cant be negative"]
   
   ;check for negative
   [(negative? downSpeed)
    "The speed of the shrinking cant be negative"]

   ;check for negative
   [(negative? desiredHeight)
    "The desired Height cant be negative"]
   
   ;if the speed of the shrinking is bigger than the speed of the grow the plant will never grow
   [(<= upSpeed downSpeed)
    "The plant will never grow"]

   ;if the speed of the grow is bigger than the desiredHeight it will grow in 1 day
   [(<= desiredHeight upSpeed)
    1]
   [else
    ;calculating the days
  (calculating-growth upSpeed downSpeed desiredHeight height days)]))



  