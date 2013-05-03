(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a) (sum term (next a) next b))))

(define (identity x) x)
(define (inc x) (+ 1 x))

(define (sum-integers a b)
  (sum identity a inc b))

(define (sum-of-squares a b)
  (sum square a inc b))

