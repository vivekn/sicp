(define (cont-frac n d k)
  (define (iter result i)
    (if (= i 0)
        result
        (iter (/ (n i) (+ result (d i))) (- i 1))))
  (iter 0.0 k))

(define (denom i)
  (if (= (remainder i 3) 2)
      (+ 2 (* 2 (/ (- i 2) 3)))
      1.0))

(define e (+ 2 (cont-frac (lambda (y) 1.0)
                          denom
                          100)))

(define (tan-cf x k)
  (define (numer i)
    (if (= i 1)
        x
        (- (square x))))
  (define (denom i) (- (* i 2) 1))
  (cont-frac numer denom k))
