(define (double p)
	(lambda (x) (p (p x))))
(define (inc a) (+ a 1))
