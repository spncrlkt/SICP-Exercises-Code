(define (double d)
	(* 2 d))

(define (halve u)
	(/ u 2))

(define (mult a b)
	(cond ((= b 1) a)
		  ((even? b) (mult (double a) (halve b)))
		  (else (+ a (mult a (- b 1))))))

(mult 5 6)

