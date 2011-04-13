(define (comp f g)
	(lambda (x) (f (g x))))
(define (repeated f n)
	(if (= n 1)
		f
		(comp f (repeated f (- n 1)))))
(define (square x) (* x x))

