#lang racket

(define (mymin a b)
  (cond                                            ;switch statement
    [(string? a)                                   ; checks if a is a string
     (printf "a is a string, it should be value")] ; prints error for a
    [(string? b)                                   ; checks if b is a string
     (printf "b is a string, it should be value")] ; prints error for b
    [else (if (< a b)                              ; comparing the two numbers
              a
              b)]))
          