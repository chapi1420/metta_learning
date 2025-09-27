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