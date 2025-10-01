;---------------------------------------------------------------------------------
;lets use the concept we have had so far and build a family tree using 
;metta programming language. we will definne some family relationships
;and then we will query the family tree to find out some relationships.
;---------------------------------------------------------------------------------


; Define Types and Predicates (Corrected 'Married' and used 'Male' as predicate)
(: Person Type)
(: Parent (-> Person Person Type))
(: Child (-> Person Person Type))
(: Married (-> Person Person Type)) 
(: Male (-> Person Type))
(: Female (-> Person Type))


; Define People and Gender Facts 
(: Chandler Person) (Male Chandler)
(: Monica Person) (Female Monica)
(: John Person) (Male John)
(: Pam Person) (Female Pam)
(: Adam Person) (Male Adam)
(: Jane Person) (Female Jane)
(: Bob Person) (Male Bob)
(: Tim Person) (Male Tim)
(: Eve Person) (Female Eve)
(: Joey Person) (Male Joey)
(: Kim Person) (Female Kim)


; Construct the Family Tree (Factual Assertions)
(Married Chandler Monica)

; Children of Chandler and Monica
(Parent Chandler Adam)
(Parent Monica Adam)

(Parent Chandler Jane)
(Parent Monica Jane)

(Parent Chandler John)
(Parent Monica John)

(Parent Chandler Pam)
(Parent Monica Pam)

; Grandchildren
(Parent John Bob)
(Parent Pam Tim)
(Parent Pam Kim)
(Parent Adam Eve)
(Parent Jane Joey)


; Define Rules
(: Grandparent (-> Person Person Type))
(= (Grandparent $x $y) (unique (match &self (, (Parent $x $p) (Parent $p $y)) $x)))

(: Sibling (-> Person Person Type))
(= (Sibling $x $y) (unique (match &self (, (Parent $p $x) (Parent $p $y) )$x)))

(: AuntUncle (-> Person Person Type))
(= (AuntUncle $x $y) (unique (match &self (, (Parent $p $y) (Sibling $p2 $p))) $p2))
(= (Uncle $x $y) (, (AuntUncle $x $y) (Male $x)))

(: Cousin (-> Person Person Type))


;Get the Parents of John
!(match &self  (Parent $x John) $x) ;[Chandler, Monica]

;get the mother of Pam

!(match &self (, (Parent $x Pam) (Female $x)) $x) ;[Monica]

;get the siblings of Pam
!(Sibling $x Pam)

;get the uncles of Tim
!(unique(match &self (,(Parent $x Tim) (Parent $y $x) (Parent $y $au) (Male $au)) $au));

;get nephews of John


;get Predecessors of Bob
