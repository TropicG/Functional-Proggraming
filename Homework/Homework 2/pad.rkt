#lang racket

(define (get xs)

  (cond

    ;end of recursion, if we reached the end we return 0
    [(empty? xs) 0]

    ;else we return the function with added 1
    [else (+ 1 (get (cdr xs)))]))


;we use this function to add the first row and the last row of surrounding
(define (put x xs i cols)

  (cond

    ;if i reached cols we return xs
    [(= i cols) xs]

    ;else we return the row with added x and i++
    [else (put x (append xs (list x)) (add1 i) cols)]))


;in the begining for each row and end of xs we add x until and add them to a new list until the original matrix is empty
(define (helper xs newxs x)

  (cond

    ;end of recursion we return the new formated matrix
    [(empty? xs) newxs]

    ;we return the function with the rest of the og matrix and the new matrix appended by the newly formated row
    [else (helper (cdr xs)  (list newxs (append (list x) (car xs) (list x))) x)]))


;pass a argument to hidden argument to pad and your matrix will be surrounded by that argument
(define (pad xs)

  ;getting the number of collums in our matrix
  (define cols (get (car xs)))


  ;at the end we make it in bigger list the first first row, the original rows of the matrix with added x in the bigining and end of each row
  ;and we finish the last row at the end
  (λ (x) (list (put x '() 0 (+ cols 2))  (helper xs '() x ) (put x '() 0 (+ cols 2)) ) ))
          

          
          