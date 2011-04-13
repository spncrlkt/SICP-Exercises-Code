(define (queens board-size)
	(define (queen-cols k)
		(if (= k 0)
			(list empty-board)
			(filter
				(lambda (positions) (safe? k positions))
				(flatmap
					(lambda (rest-of-queens)
						(map (lambda (new-row)
							     (adjoin-position new-row k rest-of-queens))
							  (enumerate-interval 1 board-size)))
					(queen-cols (- k 1))))))
	(queen-cols board-size))

(define empty-board '())
(define (adjoin-position new-row k rest-of-queens)
	(append rest-of-queens (list (list k new-row))))
(define (safe? k positions)	
	(let ((newQueen (car (getNewQueenRow k positions))))
		(if (null?
				(filter (lambda (pos)
						(if (positionEquals? pos newQueen)
							#f
							(or (checkRow pos newQueen) (checkDiag pos newQueen))))
				 positions))
				 #t
				 #f)
				 ))

(define (checkRow pos newQueen)
	(if (= (cadr pos) (cadr newQueen))
		#t
		#f))
(define (checkDiag pos newQueen)
	(if (= (abs (- (car pos) (car newQueen))) (abs (- (cadr pos) (cadr
					newQueen))))
		#t
		#f))
(define (getNewQueenRow newQueenColumn positions)
	(filter (lambda (pos)
				(if (= newQueenColumn (car pos))
					#t
					#f))
			positions))
(define (positionEquals? p1 p2)
	(if (= (car p1) (car p2))
		(if (= (cadr p1) (cadr p2))
			#t
			#f)
		#f))

