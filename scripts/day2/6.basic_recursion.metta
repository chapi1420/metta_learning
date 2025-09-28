;--------------------------------------------------------------------------------
;in MeTTa, we don't use the concept of iterations for the following reasons:
;1. iterations are not a fundamental concept in logic and mathematics.
;2. iterations can lead to non-termination or infinite loops, which are undesirable in logical
;   reasoning and computation.
;3. iterations can be less expressive and less flexible than recursion, which is a more powerful
;   and general concept for defining functions and operations.
;4. iterations require external mutable counter variables, this reliance on changing variables makes it 
;   harder to reason.
;--------------------------------------------------------------------------------




;look at the following example of defining the length of a list using recursion:
(= (length ()) 0) ;base case: the length of an empty list is 0
(= (length (:: $x $xs)) 
   (+ 1 (length $xs))) ;recursive case: the length of a non-empty list is 1 + length of the tail
! (length (:: A (:: B (:: C (:: D (:: E())))))) ; should return 5




;now asume we have a list and we want to add the elements in the list:

; Base Case: The sum of an empty list is 0
(= (sum-list ()) 0)

; Recursive Case: The sum is the head element ($x) plus the sum of the tail ($xs)
(= (sum-list (:: $x $xs))
   (+ $x (sum-list $xs)))

; Evaluation: Calculate 1 + 2 + 3
!(sum-list (:: 1 (:: 2 (:: 3 ()))))
; Expected Result: 6




;now we can define a function to reverse a list using recursion:
; Base Case: The reverse of an empty list is an empty list
(= (reverse ()) ())
; Recursive Case: The reverse of a non-empty list is the reverse of the tail ($xs)
; followed by the head element ($x)
(= (reverse (:: $x $xs))
    ((reverse $xs) $x))
; Evaluation: Reverse the list (A B C D)
!(reverse (:: A (:: B (:: C (:: D ())))))


;lets now calculate factorial of a number using recursion:
; Base Case: Factorial of 0 is 1 (the multiplication identity)
(= (factorial 0) 1)

; Recursive Case: Factorial of n is n multiplied by factorial of (n-1)
(= (factorial $n)
   (* $n (factorial (- $n 1))))

; Evaluation: Calculate 4! (4 * 3 * 2 * 1)
;careful: this might take some time to compute
!(factorial 4) ; Expected Result: 24