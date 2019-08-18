(define (average seq)
  (/ (apply + seq)
     (length seq)))