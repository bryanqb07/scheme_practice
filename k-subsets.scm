(define (k-subsets set k)
  (if (= 0 k) `(())
   (if (> k (length set)) `()
      (if (= 1 k) (map (lambda (x) (list x)) set)
	  (append (map (lambda (y) (cons (car set) y))
		  (k-subsets (cdr set) (- k 1)))
		  (k-subsets (cdr set) k))))))
		  
       