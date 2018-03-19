#lang racket
;Problem 3. 2 Functions to shift list elements one to the
;left and other to shift them one element to the right.

;lcycle function
(define (lcycle l)
                (if (null? l)
                    '()
                    (append (cdr l)
                           (cons (car l)'() ))))

;Left cycle function test case
(lcycle (list 1 2 3 4 5))

;rcycle function
(define (rcycle l)
                (if (null? l)
                    '()
                    (cons (car l)
                           (append (cdr l) ))))

;rcycle test cases
(rcycle (list 1 2 3 4 5))