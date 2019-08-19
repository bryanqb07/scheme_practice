(define (my-include? ls ele)
  (cond ((null? ls) #f)
	((eq? (car ls) ele) #t)
	(else (my-include? (cdr ls) ele))))

(define (my-remove ls ele)
  (cond ((null? ls) `())
	((eq? (car ls) ele) (my-remove (cdr ls) ele))
	(else (cons (car ls) (my-remove (cdr ls) ele)))))

(define (my-unique ls)
  (cond ((null? ls) `())
	((my-include? (cdr ls) (car ls)) (my-unique(cdr ls)))
	(else (cons (car ls) (my-unique (cdr ls))))))

(define (my-permute set)
  (if (null? set) `(())
      (apply append
      (map (lambda (ele)
	     (map (lambda (permutation)
		    (cons ele permutation))
		    (my-permute (my-remove set ele))))
	   set)))) 

      
(define (cmp-flip cmp)
  (if (eq? cmp >) < >))

(define (is-up-down? seq cmp)
  (if (or (<= (length seq) 1) (null? seq)) #t
      (and 
       (cmp (car seq) (cadr seq))
       (is-up-down? (cdr seq) (cmp-flip cmp))))) 

(define (up-down-permute x) "hello")