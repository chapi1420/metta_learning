;--------------------------------------------------------------------------
;do you know you can use variables in the knowledge base of metta?
;look at the following examples to understand the working of variables
;--------------------------------------------------------------------------

(imply (frog $x) ($x is_green ))
(imply (frog $x) ($x eats_flies )) ;we have now defined our knoledge base


!(match &self (imply(frog froggie) $what) $what)
!(match &self (imply($a $p) ($p is_green)) ($p might be a frog))


;---------------------------------------------------------------------------
; the usage of commas "," in metta
;in metta composite query is a single search pattern made up of two or more 
;individual search patterns joined by commas ",". when queries are joined by comma, 
;must find a set of variable bindings that makes all individual queries true.
;---------------------------------------------------------------------------


(imply (robot $robie) (require electricity))
(imply (robot $robie) (can reason))
(imply (human $someone) (can reason))
 !(match &self (imply(robot sophia) $what) $what)

 !(match &self (, (imply( human sophia) $what) (imply(robot $robie) $what)) $what)

 
 ;the last line of code shows there is an intersection between robots and humans
 ; and that intersection is the ability to reason. now using the concept of match, 
 ;let us find out those that can reason in our knowledge base

 !(match &self (imply ($unknown $something) (can reason)) $unknown)