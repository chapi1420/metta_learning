;match searches for a pattern in a sentence and rewrites it
;into a new form. The pattern can include variables prefixed with $.
; you hhave to be careful with the order of the patterns and also the fact that match can't  search in subextensions.

;;example1
(Sam is a frog)
(Tom is a cat)
(Sophia is a robot)

; This is the corrected assertion
  !(match &self ($who is a $what) ($who the $what))
  
