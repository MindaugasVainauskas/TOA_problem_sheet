#lang racket

;Problem 7 solution file. Returning a list from 3 input lists with elements depending on the input list corresponding elements.

;Define the function to check what elements are in 3 lists and write output depending on them
(define (maj l m r)
      (cond ((and (null? l) (null? m) (null? r)) '())  ; If all lists are null return list
            ;the check is simple enough. If 2 elements from 3 lists have 1 in the
            ;current spot, 1 is added to outcome list. otherwise 0 is added.
            ;Using and or conditionals took some getting used to
            ((or(and(= (car l) 1) (= (car m) 1))
             (or(and(= (car l) 1) (= (car r) 1)))
             (or (and(= (car m) 1) (= (car r) 1))))
             (cons 1 (maj (cdr l) (cdr m) (cdr r))))            
            (else (cons 0(maj (cdr l) (cdr m) (cdr r))))  ; If both elements ar even call function again
            ))


;Test runs
(maj '(0 1 0 1 0 1) '(0 1 1 0 1 1) '(0 0 1 1 0 1))
(maj '(1 0 1 0 1 0) '(1 0 0 1 0 0) '(1 1 0 0 1 0))
(maj '(0 1 0 1 0 1) '(0 0 1 1 0 0) '(0 0 1 1 0 1))

