(define (translate points delta)
  (map (lambda (x)
	 (+ x delta)) points))