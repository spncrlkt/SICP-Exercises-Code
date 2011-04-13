(define runtime current-milliseconds)

(define (timed-prime-test n)
	(newline)
	(display n)
	(start-prime-test n (runtime)))

(define (start-prime-test n start-time)
	(if (prime? n)
		(report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
	(display " *** ")
	(display elapsed-time))

(define (search-for-primes n)
	(timed-prime-test n)
	(search-for-primes (+ n 2)))

(search-for-primes 1999999)


