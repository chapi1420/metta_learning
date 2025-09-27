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



;to do this, we will define a few basic concepts:
(:= (Z) 0) ;define zero
(:= (S $n) (+ $n 1)) ;define successor function, which adds one to a number
(:= (plus $m (Z)) $m) ;define addition with zero
(:= (plus $m (S $n)) (S (plus $m $n))) ;define addition with successor function

;now we can use these definitions to perform addition:
!(match &self
    (plus (S (S (Z))) (S (S (S (Z))))) ;this represents 2 + 3
    $r) ;this should give us S(S(S(S(S(Z))))) as result, which is 5