#lang racket

;In this problem I am defining a function that takes an input of a number and checks if it is prime or not.
;Prime number - number that can only be divided by itself and 1 to return a whole number.
(define (decide-prime int)(
    cond
      [(<= int 1) #f]  ;if number is less than or equal to 1 it cannot be prime
      ;Kinda using Erathostenes sieve for this...
      [(= int 2) #t] ; 2 is first prime number
      [(= 0 (modulo int 2)) #f]
      [(= 0 (modulo int 3)) #f]
      [(= 0 (modulo int 5)) #f]
      [(= 0 (modulo int 7)) #f]
      [else #t]
     ))

(decide-prime 5) ;expected: true
(decide-prime 1) ;expected: false
(decide-prime -5) ;expected: false
(decide-prime 4) ;expected: false
(decide-prime 13) ;expected: true
(decide-prime 15) ;expected: false
(decide-prime 787)
(decide-prime 343)
(decide-prime 2)
