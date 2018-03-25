#lang racket
; Problem 6. Hamming distance calculation between 2 lists

;Hamming distance function that takes 2 lists as inputs and calculates how many elements are not same
(define (hamming-distance l r)
      (cond ((and (null? l) (null? r)) 0)  ; If both lists are null return 0
            ;If the current car elements from both lists are not same, increment not equal count by 1 and call function again
            ((not(= (car l) (car r)))(+ 1 (hamming-distance (cdr l) (cdr r))))            
            (else (hamming-distance (cdr l) (cdr r)))  ; If both elements ar eeven call function again
            ))


;Test runs for the hamming distance function
(hamming-distance '(1 0 1 0 1 1 1 0) '(1 1 1 1 0 0 0 0))
(hamming-distance '(1 0 1 0 1 1 1 0) '(1 0 1 1 0 0 1 1))
(hamming-distance '(1 0 1 0 1 1 1 0) '(1 0 1 1 1 0 1 1))
(hamming-distance '(1 0 1 0 1 1 1 0) '(1 0 1 1 1 1 1 1))