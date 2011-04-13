(define (double d)
	(* 2 d))

(define (halve u)
	(/ u 2))

(define (mult c a b)
	(cond ((= b 1) (+ a c))
		  ((even? b) (mult c (double a) (halve b)))
		  (else  (mult (+ a c) a (- b 1)))))

(mult 0 5 6)

