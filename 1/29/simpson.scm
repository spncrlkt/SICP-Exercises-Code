(define (sum term a next b)
	(if (> a b)
		0
		(+ (term a) (sum term (next a) next b))))

(define (cube a)
	(* a a a))

(define (simpson f a b n)
	(define h (/ (- b a) n))
	(define (inc x) (+ x 1))
	(define (term i)
		(cond ((= i 0) (f a))
			  ((= i n) (f b))
			  ((even? i) (* 2 (f (+ a (* i h)))))
			  (else (* 4 (f (+ a (* i h)))))))
	(* (/ h 3) 
	   (sum term 0 inc n)))

(simpson cube 0 1 25)
