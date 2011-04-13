(define (square-tree tree)
	(map (lambda (sub-tree)
				 (if (pair? sub-tree)
				 	 (square-tree sub-tree)
				     (* sub-tree sub-tree)))
		  tree))

(define x (list 1 (list 2 (list 3 4) 5) (list 6 7)))

(define (tree-map proc tree)
	(map (lambda (sub-tree)
				 (if (pair? sub-tree)
				 	 (tree-map proc sub-tree)
				 	 (proc sub-tree)))
		 tree))
(define (square x) (* x x))

