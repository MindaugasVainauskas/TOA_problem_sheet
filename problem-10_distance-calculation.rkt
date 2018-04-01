#lang racket

;Problem 10. Distance calculation for input of 2 lists

; d = sum(((car l) - (car m))^2)  - formula in problem sheet.

;Main function
(define (lstq l m)
  (if
    (and (null? l) (null? m)) 0 ; If both lists are empty return result of the function
        (+ (square-up (neg (car l) (car m))) (lstq (cdr l) (cdr m))))) ; While not empty recursively call the summing function

; Helper function to return result of (car l) - (car m)
(define (neg x y)
    (- x y))

;Helper function to get squared result of a number
(define (square-up x)
  (* x x))

;Test case
(lstq '(4.5 5.1 6.2 7.8) '(1.1 -0.1 6.1 3.8))
