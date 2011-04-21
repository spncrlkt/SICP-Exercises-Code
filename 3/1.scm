(define (make-accumulator sumTotal)
	(lambda (addend)
		(begin (set! sumTotal (+ addend sumTotal))
				sumTotal)))
