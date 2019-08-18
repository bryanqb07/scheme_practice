(define (ps set)
  (if (null? set) `(())
      (append (ps (cdr set))
	      (map (lambda (x) (cons (car set) x)) (ps (cdr set))))))
	
	
     