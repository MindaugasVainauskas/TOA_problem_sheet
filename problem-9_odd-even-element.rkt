#lang racket

;Problem 9. Taking input of 3 lists and returning 1 where elements of list have odd number of 1's and 0 otherwise

;Main function
(define (sod2 x y z)
  (cond((and (null? x) (null? y) (null? z)) '())
           ((= (modulo (+ (car x) (car y) (car z)) 2) 1)
           (cons 1 (sod2 (cdr x) (cdr y) (cdr z))))
           (else (cons 0 (sod2 (cdr x) (cdr y) (cdr z))))
       ))


;Test run
(sod2 '(0 0 0 0 1 1 1 1) '(0 0 1 1 0 0 1 1) '(0 1 0 1 0 1 0 1))

