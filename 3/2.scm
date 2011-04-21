(define (make-monitored function)
	(let ((calls 0))
		(lambda (argument)
			(if (eq? argument 'how-many-calls?)
				calls
				(begin (set! calls (+ calls 1))
					   (function argument))))))
