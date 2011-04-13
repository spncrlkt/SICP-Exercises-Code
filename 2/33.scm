(define a (list 1 2 3 4 5))
(define (square x) (* x x))
(define nil '())

(define (map p sequence)
	(accumulate (lambda (x y) 
					(cons (p x)
						 y))
				nil
				sequence))

(define (append seq1 seq2)
	(accumulate cons seq1 seq2))

(define (length sequence)
	(accumulate (lambda (x y)
					(+ 1 y))
				0
				sequence))
