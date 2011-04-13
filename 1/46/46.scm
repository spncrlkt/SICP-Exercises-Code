(define (iter-improve good? next-guess)
	(define (iter-iter x)
		(if (= (good? x) 1)
			x
			(iter-iter (next-guess x)))))

