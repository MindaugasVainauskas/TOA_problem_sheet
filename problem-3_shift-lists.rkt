#lang racket
;Problem 3. 2 Functions to shift list elements one to the
;left and other to shift them one element to the right.


;Helper functions
;Custom append function
(define (append-list l r)
  (if (null? l)
      r
      (cons (car l) (append-list (cdr l) r))))

;Custom find last element in list function.
(define (get-last l)
  (cond ((null? (cdr l))  ;if cdr of list is null, return car which is last element.
         (car l))
      (else(get-last (cdr l))))) ; if cdr not null, keep calling function


;lcycle function
(define (lcycle l)
                (if (null? l)
                    '()
                    (append-list (cdr l)
                           (cons (car l)'() ))))

;Left cycle function test case
(lcycle (list 1 2 3 4 5))

;rcycle function
(define (rcycle l)
                (if (null? (car l))
                    (append-list (cdr l))
                    (cons (car l)
                           (append-list (cdr l) '()))))


;rcycle test cases
;(rcycle (list 1 2 3 4 5))


