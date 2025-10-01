; Find the sum of all the multiples of 3 or 5 upto a certain number
(= (sum-multiple $num $sum)
    (if (> $num 0)
        (if (or (== 0 (% $num 3)) (== 0 (% $num 5)))
            (sum-multiple (- $num 1) (+ $sum $num))
            (sum-multiple (- $num 1) $sum)
        )
        $sum
    )
)
; Sum of multiples of 3 and 5 upto 10
!(sum-multiple 10 0)

