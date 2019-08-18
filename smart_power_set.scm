(define (ps-smart set)
  (if (null? set) `(())
      (let ( (ps-rest (ps-smart (cdr set))))
      (append ps-rest 
	      (map (lambda (x) (cons (car set) x)) ps-rest)))))