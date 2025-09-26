;------------------------------------------------------------
;metta can perform a multi-step evaluation or reasoning by
;chaining match queries together. this is a fundamental 
;concept for building intelligent systems that can solve 
;problems by breaking them down into smaller, manageable steps.
;------------------------------------------------------------



;-------------------------------------------------------------
;what do you know abou the concept of combinators? in this code, we will be using three basic combinators 
;in metta that are elegant variable free rules for demonstrating fundamental
;equivalence and multi-step symbolic evalluation.
;they are : identity combinator, kerstel combinato and starling combinators.
;-----------------------------------------------------------------


;identity combinator
(:= (I $x) $x);this expression makes sure that  $x followed by I will be $x, just like logical identity

;kerstel combinator
(:= (K $x $y) $x);this expression makes sure that $x followed by K and then followed by $y will be $x, just like logical constancy
(:= ((K $x) $y) $x); this is nested forn of kerstel combinator, the above is flat form of kerstel combinator.

;starling combinator
(:= (S $x $y $z) (($x $z) ($y $z)));this expression makes sure that $x followed by S and then followed by $y and then followed by $z will be ($x $z) ($y $z), just like logical distribution