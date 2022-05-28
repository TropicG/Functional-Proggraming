#lang racket


(define (switch-sum f g n)
  (λ (x)
    (cond
      ;if n is passes x to f
      [(= n 1)  (f x)]

      ;else adds f(x) + the function with n++
      [else (+ (f x) ((switch-sum g f (add1 n)) (f x)))]
        )
    )
 )