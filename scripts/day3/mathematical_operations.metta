;-------------------------------------------------------------------
;mathematical operations in metta
;we have many mathematical operations we can perform using metta language
;here are some examples of basic mathematical operations:
;-------------------------------------------------------------------


;pow-math: used for exponentiation
!('pow-math result')
!(pow-math 3 2) ; should return 9
!(pow-math 2 3) ; should return 8




;sqrt-math: used to calculate the square root
!('sqrt-math result')
!(sqrt-math 9) ; should return 3
!(sqrt-math 16) ; should return 4


;abs-math: used to calculate the absolute value
!('abs-math result')
!(abs-math -5) ; should return 5
!(abs-math 5) ; should return 5

;log-math: used to calculate the logarithm
;notice that both the base and the number are required
!('log-math result')
!(log-math 10 100) ; should return 2 