(define (fermat-test a n)
    (= a (modexp a n n)))

(define (modexp a n p)
    (remainder 
        (cond ((= n 0) 1)
              ((even? n) (square (modexp a (/ n 2) p)))
              (else (* a (square (modexp a (/ (- n 1) 2) p))))) p))

(define (iprime? n times)
    (cond ((= times 0) true)
          ((fermat-test (+ 1 (random (- n 1))) n) (iprime? n (- times 1)))
          (else false)))
(define (prime? n) (iprime? n 10))
