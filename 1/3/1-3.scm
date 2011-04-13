(define (sum-of-squares x y) 
	(+ (* x x) (* y y) ))

(define (sumOfBestOfThree a b c) 
	(if (< a b) 
		(if (< a c) 
			(sum-of-squares b c) (sum-of-squares a b)) 
		(if (< b c)
			(sum-of-squares a c) (sum-of-squares a b))))



(sumOfBestOfThree 3 4 1)
