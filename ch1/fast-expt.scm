(define (fast-expt a b)
    (cond ((= b 0) 1)
          ((= (remainder b 2) 0) (square (fast-expt a (/ b 2))))
          (else (* a (square (fast-expt a (/ (- b 1) 2)))))))
          
(define (fast-expt-iter1 a b n)
    (cond ((= n 0) a)
          ((even? n) (fast-expt-iter1 a (square b) (/ n 2)))
          (else (fast-expt-iter1 (* a b) (square b) (/ (- n 1) 2))))) 

(define (fast-expt-iter a n) (fast-expt-iter1 1 a n))
