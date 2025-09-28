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



;trunc-math: used to truncate a number to its integer part
!('trunc-math result')
!(trunc-math 5.7) ; should return 5
!(trunc-math -5.7) ; should return -5



;ceil-math: gives the smallest integer greter than or equal to the number
!('ceil-math result')
!(ceil-math 5.2) ; should return 6
!(ceil-math -5.2) ; should return -5


;floor-math: gives the largest integer less than or equal to the number
!('floor-math result')
!(floor-math 5.7) ; should return 5
!(floor-math -5.7) ; should return -6


;round-math: used to round a number to the nearest integer
!('round-math result')
!(round-math 5.5) ; should return 6
!(round-math 5.4) ; should return 5
!(round-math -5.5) ; should return -6





;trig functions
;sin-math: used to calculate the sine of an angle in radians
!('sin-math result')
!(sin-math 0) ; should return 0
!(sin-math (/ 3.14159 2)) ; should return 1 
!(asin-math 1) ; should return 1.5708 (which is pi/2)

;cos-math: used to calculate the cosine of an angle in radians
!('cos-math result')
!(cos-math 0) ; should return 1
!(cos-math (/ 3.14159 2)) ; should return 0
!(acos-math 0) ; should return 1.5708 (which is pi/2)


;tan-math: used to calculate the tangent of an angle in radians
!('tan-math result')
!(tan-math 0) ; should return 0
!(tan-math (/ 3.14159 4)) ; should return 1
!(atan-math 0) ; should return 0
