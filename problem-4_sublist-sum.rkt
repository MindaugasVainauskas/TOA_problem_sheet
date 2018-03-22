#lang racket

;Problem 4 from the problem sheet.
;Calculating the sublist sum

;Make a function to count sum of elements
;recursively call the list and add the ones that add to 0 into the list for return
;call the function with combinations keyword

;1st helper function. Summing the elements of list
(define (sum-elements l)
  (if (null? l)
      0
      (+(car l) (sum-elements (cdr l)))))

;2nd Helper function. Adding elements of the list that sum up to 0
(define (sublist-add l)
  (if (null? l)
      '()
      (if (= 0 (sum-elements (car l)))
          (cons (car l)(sublist-add (cdr l)))
          (sublist-add (cdr l))                                    
   )))

;Actual function to return sublists of a list that accumulate to 0.
(define (sublsum l)
  (sublist-add(combinations l)))

;Test run for the function
 (sublsum (list 1 2 3 4 -5))