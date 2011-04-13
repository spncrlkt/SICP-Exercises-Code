(define (iters n)
	(iter 1 2 2 n))

(define (iter n2 n1 current goal)
	(if (= current goal) n1 
		(iter n1 (+ n1 (* 2 n2)) (+ current 1) goal)))

(iters 5)
