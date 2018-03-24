#lang racket
;Problem 5. Calculating hamming weight of a given binary list.

(define (hamming-weight l)
  (if (null? l)
      '()
      (sum-elements l)))

;Helper function for counting non 0 elements in the list
(define (sum-elements l)
  (cond ((null? l) 0)
        ((not (= (car l) 0))
        (+ 1(sum-elements (cdr l))))
        (else (sum-elements (cdr l)))
    
    ))

;Test runs of the function
(hamming-weight '(0 1 0 1 0 1 1 0))
(hamming-weight '(1 5 10 8 0 0 4))