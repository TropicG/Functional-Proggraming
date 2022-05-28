#lang racket

(define (can-carry? products bag weighs)
  (cond
    
    ;checks if products is a string
    [(string? products)
     "Products should not be a string, it should be a number"]
    ;checks if bag is a string
    [(string? bag)
     "Bag should not be a string, it should be a number"]
    
    ;checks if weighs is a string
    [(string? weighs)
     "Weighs should not be a string, it should be a number"]
    
    ;checks if products is below 0
    [(< products 0)
     "Products should be positive, not negative"]
    
    ;checks if bag is below 0
    [(< bag 0)
     "Bag should be positive, not negative"]
    
    ;checks if weighs is below 0
    [(< weighs 0)
     "Weighs should be positive, not negative"]
    
    ;checks if the bag can carry them
    [(>= bag (* products weighs))
     "Yes, he can carry it"]
   
    [else
     "No, he can carry it"]))

      