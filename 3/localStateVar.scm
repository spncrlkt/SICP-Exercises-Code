(define balance 100)

(define (withdraw amount)
	(if (>= balance amount)
		(begin (set! balance (- balance amount))
			   balance)
		"Insufficient funds"))
	
(define new-withdraw
	(let ((balance 100))
		(lambda (amount)
			(if (>= balance amount)
				(begin (set! balance (- balance amount))
						balance)
				"ISF"))))

(define (make-withdraw balance)
	(lambda (amount)
		(if (>= balance amount)
			(begin (set! balance (- balance amount))
					balance)
			"ISF")))

(define (make-account balance password)
	(define (withdraw amount)
		(if (>= balance amount)
			(begin (set! balance (- balance amount))
					balance)
			"ISF"))
	(define (deposit amount)
		(set! balance (+ balance amount))
		balance)
	(define (dispatch m)
		(cond ((eq? m 'withdraw) withdraw)
			  ((eq? m 'deposit) deposit)
			  (else (error "Unknown Request -- MAKE-ACCOUNT"
			  				m))))
	(define (passwordCheck pwArg dispatchArg)
		(let ((badPWS 0))
			(if (eq? pwArg password)
				(begin (set! badPWS 0)
					(dispatch dispatchArg))
				(if (= badPWS  6)
					"Call the cops"
					(begin (set! badPWS (+ badPWS 1))
						(lambda (amount) "Incorrect Password"))))))
					
	passwordCheck)


