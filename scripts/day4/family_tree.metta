;---------------------------------------------------------------------------------
;lets use the concept we have had so far and build a family tree using 
;metta programming language. we will definne some family relationships
;and then we will query the family tree to find out some relationships.
;---------------------------------------------------------------------------------

;define types
(:Person Type)
(:Parent (-> Person Person Type))
(:Child (-> Person Person Type))
(:Married (Person Person Type))
(:Man (-> Person Type))
(:Female (-> Person Type))


;define some people
(: Chandler Person)
(Male Chandler)

(: Monica Person)
(Female Monica)

(: John Person)
(Male John)

(: Pam Person)
(Female Pam)

(: Adam Person)
(Male Adam)

(: Jane Person)
(Female Jane)

(: Bob Person)
(Male Bob)

(: Tim Person)
(Male Tim)

(: Eve Person)
(Female Eve)

(: Joey Person)
(Male Joey)