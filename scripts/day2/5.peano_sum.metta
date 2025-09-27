;----------------------------------------------------------------------
; Peano arithmetic: sum

;what do you know about the concept of peano arithmetic?
;imagine you have to tankers filled with wate, and you want to
; know the total amount of water in both tankers.
;you might have many possible ways, but one way is to take water
; from the second one and put it in the first one, 
;say one liter at a time until the second tanker is empty.
;this is a simple example of addition using peano arithmetic.
;-------------------------------------------------------------------

(:= (Add $x Z) $x)
(:= (Add $x (S $y)) (S (Add $x $y))) ; This rule is simpler for demonstration

; Chaining the match would look like:
!(match &self
    (:= (Add (S Z) (S Z)) $r1)
    (match &self (:= $r1 $r2)
        $r2))
