(define (cont-frac n d k)
	(define (cfrec i)
		(if (= i k)
			(/ (n k) (d k))
			(/ (n i) (+ (d i) (cfrec (+ i 1))))))
	(cfrec 1))

