(define (equal? a b)
	(if (and (symbol? a) (symbol? b))
		(if (eq? a b)
			#t
			#f)
	 	(if (and (pair? a) (pair? b))
			(and (equal? (car a) (car b))
				 (equal? (cdr a) (cdr b)))
			#f)))
