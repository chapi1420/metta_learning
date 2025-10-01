; (= (brother Mike) Tom)
; (= (brother Sam) Bob)
; ! (brother $x) ; just Tom and Bob are returned
; ! ((brother $x) is the brother of $x) ; the binding for $x is not lost

(= (Parent a) b)
!(Parent $x)