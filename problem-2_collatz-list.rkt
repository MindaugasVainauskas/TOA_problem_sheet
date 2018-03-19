#lang racket
;problem 2. Collatz list
; define a collatz list function that prints out all the number
;sequence from given number to the end result.
(define (collatz-list n)
  (if (= n 1)
      (cons 1 null)(
                    cons n
                         (if(even? n)
                            (collatz-list(/ n 2))
                            (collatz-list(+ (* 3 n) 1))))))

;Testing outcomes from the collatz list function
(collatz-list 5)
(collatz-list 10)
(collatz-list 17)
(collatz-list 6)