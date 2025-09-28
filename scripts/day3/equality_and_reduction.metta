;-------------------------------------------------------------------
;equality and reduction in metta
;we have many basic implementations of equality and reduction that are important for the
;efficient usage of the programming language. Here are some examples of equality and reduction operations:
;-------------------------------------------------------------------


;1. '=' (Equality/ ReductionRule Definition):
; This operator is used to define equality between two expressions or to create reduction rules.
; It can be used to state that two expressions are equivalent or to define how one expression can
; be transformed into another.
; Example:
(= (add $x 0) $x) ; This states that adding 0 to any number $x results in $x itself.
(= (multiply $x 1) $x) ; This states that multiplying any number $x by 1 results in $x itself
!(add 5 0) ; should return 5


;2. 'id' (Identity):
; This operator returns the input unchanged.
!(id 42) ; should return 42
!(id "Hello, World!") ; should return "Hello, World!"



;3. '=alpha' (Alpha Equivalence):
; This operator checks if two expressions are equivalent up to renaming of bound variables.
;------------------------------------------------------------------------------------------------------------------
;why the concept of alpha equivalence in metta?
;1. knowledge base efficiency: it helps in reducing redundancy by identifying equivalent expressions.
;2. robust matching: it enhances pattern matching capabilities by recognizing structurally similar expressions.
;3. AGI Foundation: it aligns with principles of logic and computation, which are crucial for AGI development.
;------------------------------------------------------------------------------------------------------------------
!(=alpha (lambda ($x) (add $x 1)) (lambda ($y) (add $y 1))) ; should return true
!(=alpha (lambda ($x) (add $x 1)) (lambda ($y) (add $y 2))) ; should return false



;---------------------------THE CONCEPT OF ASSERTION--------------------------------
;in metta programming language, the concept of assertion is useg to identify whather the function is performing
;in the required manner or not. Eventhough, there are different assertions, all of them share the property of
;comparing the first argument to the second argument and returning true if proven to be equal and false otherwise.
;-----------------------------------------------------------------------------------

;4. 'assertEqual': compares (sets of) results of evaluation of two expresions. returns a unit atom if both expressions after 
;evaluation are equal, otherwise it returns false.
!(assertEqual (+ 2 3) (- 8 3)) ; should return [()] -> true
!(assertEqual (+ 2 3) (- 8 2)) ; should return error message -> false


;5. 'assertAlphaEqual': compares two expressions for alpha equivalence. returns a unit atom if both expressions are alpha equivalent,
;otherwise it returns false.
!(assertAlphaEqual (lambda ($x) (add $x 1)) (lambda ($y) (add $y 1))) ; should return [()] -> true
!(assertAlphaEqual (lambda ($x) (add $x 1)) (lambda ($y) (add $y 2))) ; should return error message -> false


;6. 'assertEqualToResult': this is the same with 'assertEqual', but the second argument is not an expression, but a result of evaluation.
!(assertEqualToResult (+ 2 3) 5) ; should return [()] -> true
!(assertEqualToResult (+ 2 3) 6) ; should return error message -> false


;7. 'assertAlphaEqualToResult': this is the same with 'assertAlphaEqual', but the second argument is not an expression, but a result of evaluation.
!(assertAlphaEqualToResult (lambda ($x) (add $x 1)) (lambda ($y) (add $y 1))) ; should return [()] -> true
!(assertAlphaEqualToResult (lambda ($x) (add $x 1)) (lambda ($y) (add $y 2))) ; should return error message -> false