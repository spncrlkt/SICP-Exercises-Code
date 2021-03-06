(define (inc2 a) (+ a 2))
(define (prod term a next b)
	(if (> a b)
		1
		(* (term a)
		   (prod term (next a) next b))))
(define (square x) (* x x))
(define (appx-pi n)
	(* 8
	   (/ (prod square 4 inc2 n)
	   	  (prod square 3 inc2 n))))

(appx-pi 100)
