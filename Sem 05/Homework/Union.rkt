#lang racket

;check if the element is present in the given list
(define (isThere list elem)

  (cond

    ;end of recursion, if the last element is equal to the element returns true
    [(and (= (length list) 1) (equal? (car list)  elem)) #t]

    ;end of recursion, if the last element is not equal to the element returns false
    [(and (= (length list) 1) (not (equal? (car list) elem))) #f]

    ;if the current element is equal to the element returns true
    [(equal? (car list) elem) #t]

    ;returns the function with the rest of the list
    [else (isThere (cdr list)  elem)]))

;we create new list which contains all the elements from list2 that are not present in list1
(define (helperfun newList list2 list1)

  (cond

    ;end of recursion, if the last element of list2 is in list1 returns the newList
    [(and (= (length list2) 1) (isThere list1 (car list2))) (list newList)]

    ;end of recursion, if the last element of list2 is not in list1 returns newList with added last element of list2
    [(and (= (length list2) 1) (not (isThere list1 (car list2)))) (cons newList (car list2))]

    ;if the current elem in list2 is not in list1 retunrs the function with added list2 element to the new list
    [(not (isThere list1 (car list2))) (helperfun (cons newList (car list2)) (cdr list2) list1)]

    ;else retunrs teh function with the rest elements from list2
    [else (helperfun newList (cdr list2) list1)]))


  
(define (set-union list1 list2)

  ;at the end appends the two forged lists
  (append list1 (helperfun '() list2 list1)))