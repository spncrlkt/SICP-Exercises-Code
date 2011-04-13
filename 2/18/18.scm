(define (rev items)
	(define (rev-iter item result)
		(if (null?  items)
			result
			(rev-iter (cdr items) (cons (car items) result)))))
(define x (list 1 2 3 4 5 6 7 8 9))
(rev x)
