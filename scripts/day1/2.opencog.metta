;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;----------------------------------------------
;metta has the ability to represent structured knowledge
;from systems like opencog classic using symbols and expressions.
;The main take away  is that metta trats all structured knowledge, even complex "links"
;and "nodes" as purely symbolic expressions, allowing you to query
;them with pattern matching and rewrite them into new forms.
;----------------------------------------------
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;lets define some structured knowledge using symbols
;these are purely symbolic expressions
(EvaluationLink
  (PredicateNode "eats")
  (ListLink
     (ConceptNode "Alice")
     (ConceptNode "bananas")))

(EvaluationLink
  (PredicateNode "eats")
  (ListLink
     (ConceptNode "Charlie")
     (ConceptNode "pizza")))

(EvaluationLink
  (PredicateNode "eats")
  (ListLink
     (ConceptNode "BOb")
     (ConceptNode "bananas")))

;we can use match to search for patterns in these expressions
;and rewrite them into new forms. lets have a list of those who eat bananas

!(match &self (EvaluationLink
(PredicateNode "eats")
  (ListLink
     (ConceptNode $who)
     (ConceptNode "bananas"))) ($who eats bananas))
;we can verify that the result is correct using assertion
!(assetrEqualToResult
(match &self 
(EvaluationLink
(PredicateNote "eats")
(ListLink (($x) (ConceptNode "pizza")))) $x) (ConceptNode "Charlie"))