(define (pascal n r) 
    (cond ((and (= n 0) (= r 0)) 1)
          ((or (< n 0) (< r 0)) 0)
          ((> r n) 0)
          (else (+ 
                (pascal (- n 1) r) 
                (pascal (- n 1) (- r 1))))))
