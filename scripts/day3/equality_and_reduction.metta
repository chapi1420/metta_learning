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



;'=alpha' (Alpha Equivalence):
; This operator checks if two expressions are equivalent up to renaming of bound variables.
;------------------------------------------------------------------------------------------------------------------
;why the concept of alpha equivalence in metta?
;1. knowledge base efficiency: it helps in reducing redundancy by identifying equivalent expressions.
;2. robust matching: it enhances pattern matching capabilities by recognizing structurally similar expressions.
;3. AGI Foundation: it aligns with principles of logic and computation, which are crucial for AGI development.
;------------------------------------------------------------------------------------------------------------------
!(=alpha (lambda ($x) (add $x 1)) (lambda ($y) (add $y 1))) ; should return true
!(=alpha (lambda ($x) (add $x 1)) (lambda ($y) (add $y 2))) ; should return false

