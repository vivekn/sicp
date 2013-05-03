(define (miller? a n)
  (= 1 (expmod a (- n 1) n)))

(define (expmod a n m)
  (cond ((= n 0) 1)
        ((even? n) (modsquare (expmod a (/ n 2) m) m))
        (else (remainder (* a (expmod a (- n 1) m)) m))))

(define (modsquare a m)
  (if (and
        (= (remainder (square a) m) 1)
        (not (= a 1))
        (not (= a (- m 1))))
      0
      (remainder (square a) m)))

(define (miller-rabin n times)
    (cond ((= times 0) true)
          ((miller? (+ 1 (random (- n 1))) n) (miller-rabin n (- times 1)))
          (else false)))

(define (prime? n)
  (miller-rabin n 10))
