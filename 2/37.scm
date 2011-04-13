(define m (list (list 1 2 3 4) (list 4 5 6 6) (list 6 7 8 9)))
(define (dot-product v w)
	(accumulate + 0 (map * v w)))

(define (matrix-*-vector m v)
	(map (lambda (x) (* x v)) m))
