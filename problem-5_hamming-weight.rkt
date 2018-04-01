#lang racket
;Problem 5. Calculating hamming weight of a given list.

(define (hamming-weight l)
  (if (null? l); If list is null/empty
      '()  ;Return resulting sum
      (sum-elements l)))  ;Else recursively call the helper function

;Helper function for counting non 0 elements in the list
(define (sum-elements l)
  (cond ((null? l) 0) ; If list is null/empty return 0.
        ((not (= (car l) 0))  ;If current element is non zero
        (+ 1(sum-elements (cdr l))))  ; Add 1 to the amont of non zero elements in list
        (else (sum-elements (cdr l))) ; Otherwise recursively call the helper function
    
    ))

;Test runs of the function
(hamming-weight '(0 1 0 1 0 1 1 0))
(hamming-weight '(1 5 10 8 0 0 4))