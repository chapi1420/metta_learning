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
(Implies
    (And (Parent $gp $p) (Parent $p $gc))
    (Grandparent $gp $gc)
)

(: Sibling (-> Person Person Type))
(Implies
    (And
        (Parent $p $s1)
        (Parent $p $s2)
        (Not (Equal $s1 $s2)) 
    )
    (Sibling $s1 $s2)
)

(: AuntUncle (-> Person Person Type))
(Implies
    (And (Sibling $au $p) (Parent $p $ch))
    (AuntUncle $au $ch)
)

(: Cousin (-> Person Person Type))
(Implies
    (And (Parent $p1 $c1) (Parent $p2 $c2) (Sibling $p1 $p2))
    (Cousin $c1 $c2)
)