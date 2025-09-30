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
(:Woman (-> Person Type))


