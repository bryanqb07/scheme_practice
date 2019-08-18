(define (my_map cmp seq)
   (if (null? seq) `()
       (cons (cmp (car seq)) (my_map cmp (cdr seq)))))