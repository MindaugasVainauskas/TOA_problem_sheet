# TOA_problem_sheet
Repository for completing Racket problems for Theory of Algorithms CA.
Year 4 Software development course, Theory of Algorithms module, GMIT 2018

## Problems dealt with in these problem solution files:

Problem 1 - Write, from scratch, a function in Racket that uses a brute-force algorithm that takes a single positive integer and return true if the number is a prime and false otherwise.

Problem 2 - Write, from scratch, a function in Racket that takes a positive integer n0 as input and returns a list by recursively applying the following operation, starting with the input number. 

Formula: *ni+1 = 3ni + 1 if ni is odd, ni ÷ 2 otherwise.*

End the recursion when (or if) the number becomes 1. Call the function collatz-list. So, collatz-list should return a list whose first element is n0, the second element is n1, and so on.

Problem 3 - Write, from scratch, two functions in Racket. The first is called lcycle. It takes a list as input and returns the list cyclically shifted one place to the left. The second is called rcycle, and it shifts the list cyclically shifted one place to the right.

Problem 4 - Write a function sublsum in Racket that takes a list (of integers) as input and returns a list of sublists of it that sum to zero. For this problem, you can use the combinations built-in function. Note the order of the sublists and their elements doesn’t matter.

Problem 5 - Write a function hamming-weight in Racket that takes a list l as input and returns the number of non-zero elements in it.

Problem 6 - Write a function hamming-distance in Racket that takes two lists and returns the number of positions in which they differ.

Problem 7 - Write a function maj in Racket that takes three lists x, y and z of equal length and containing only 0’s and 1’s. It should return a list containing a 1 where two or more of x, y and z contain 1’s, and 0 otherwise. 

Problem 8 - Write a function chse in Racket that takes three lists x, y and z of equal length and containing only 0’s and 1’s. It should return a list containing the elements of y in the positions where x is 1 and the elements of z otherwise.

Problem 9 - Write a function sod2 in Racket that takes three lists x, y and z of equal length and containing only 0’s and 1’s. It should return a list containing a 1 where the number of 1’s in a given position in x, y and z contains an odd nubmer of 1’s, and 0 otherwise.

Problem 10 - Write a function lstq in Racket that takes as arguments two lists l and m of equal length and containing numbers. It should return d, the distance given by the sum of the square residuals between the numbers in the lists:

Formula in Racket format: *d = sum(((car l) - (car m))^2)*

This means take the ith element of m from the ith element of l and square the result for all i. Then add all of those to get d.
