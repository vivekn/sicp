(define (fermat-test a n)
    (= a (modexp a n n)))

(define (modexp a n p)
    (remainder 
        (cond ((= n 0) 1)
              ((even? n) (square (modexp a (/ n 2) p)))
              (else (* a (square (modexp a (/ (- n 1) 2) p))))) p))

(define (carmichael-test n)
    (define (iter a)
      (cond ((= a n) true)
            ((fermat-test a n) (iter (+ 1 a)))
            (else false)))
    (iter 1))
