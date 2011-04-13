(define (cont-frac n d k)
	(define (cfrec i)
		(if (= i k)
			(/ (n k) (d k))
			(/ (n i) (+ (d i) (cfrec (+ i 1))))))
	(cfrec 1))
(define (euler i)
	(if (= (modulo i 3) 2)
	    (* 2 (/ (+ i 1) 3))
		1))
(define (t k)
(cont-frac (lambda (i) 1.0)
		   euler
		   k))


