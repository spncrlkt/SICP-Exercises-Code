(define (unique-trips n)
	(flatmap (lambda (i) 
				(map (lambda (j) 
						(map (lambda (k) (list i j k))
							 (enumerate-interval 1 (- j 1))))
					 (enumerate-interval 2 (- i 1))))
			 (enumerate-interval 1 n)))
				
