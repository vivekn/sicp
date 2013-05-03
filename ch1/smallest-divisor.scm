(define (smallest-divisor n) 
    (find-divisor n 2))

(define (find-divisor n curr)
    (cond ((> (square curr) n) n)
          ((divides? curr n) curr)
          (else (find-divisor n (next curr)))))

(define (next n)
  (if (= n 2)
      3
      (+ n 2)))

(define (divides? a b)
    (= 0 (remainder b a)))

(define (prime? n)
    (and (not (= n 1)) (= (smallest-divisor n) n)))
