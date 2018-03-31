#lang racket

;Problem 8 solution file. Returning elements of lists y or z depending on the current element of list x

(define (chse x y z)
  (cond
    ((and (null? x) (null? y) (null? z)) '()) ;If lists are null return the output list
            ((= (car x) 1) (cons (car y)(chse (cdr x) (cdr y) (cdr z)))) ;Checks are done against elements of x
             (else(cons (car z)(chse (cdr x) (cdr y) (cdr z)))))) ;If element is 0 car of z is added to output

;Test cases
(chse '(0 0 0 0 1 1 1 1) '(0 0 1 1 0 0 1 1) '(0 1 0 1 0 1 0 1)) ;Should be a mix of both y and z
(chse '(1 1 1 1 1 1 1 1) '(0 0 1 1 0 0 1 1) '(0 1 0 1 0 1 0 1)) ;Should output y only
(chse '(0 0 0 0 0 0 0 0) '(0 0 1 1 0 0 1 1) '(0 1 0 1 0 1 0 1)) ;Should output z only