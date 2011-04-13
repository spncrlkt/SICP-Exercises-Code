(define nil '())
(define a (list 1 2 3))
(define (subsets s)
	(if (null? s)
		(list nil)
		(let ((rest (subsets (cdr s))))
			(append rest (map (lambda (subset)
									  (append (list (car s)) subset)) 
								rest)))))
