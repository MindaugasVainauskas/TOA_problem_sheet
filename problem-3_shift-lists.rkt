#lang racket
;Problem 3. 2 Functions to shift list elements one to the
;left and other to shift them one to the right.

;lcycle function
(define (lcycle l)
                (if (null? l)
                    '()
                    (append (cdr l)
                           (cons (car l)'() ))))

;Left cycle function test cases
(lcycle (list 1 2 3 4 5))
(lcycle (list 'a 'b 'c 'd 'e))