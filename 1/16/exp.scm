(define (even? n)
	(= (remainder n 2) 0))
(define (exp-iter a b n)
	(cond ((= n 0) a)
		  ((even? n) (exp-iter a (* b b) (/ n 2)))
		  (else (exp-iter (* a b) b (- n 1)))))

(exp-iter 1 2 6)
		
				
		
