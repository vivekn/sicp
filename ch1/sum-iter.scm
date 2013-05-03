(define (sum-iter accum term a next b)
  (if (> a b)
      accum
      (sum-iter (+ accum (term a)) term (next a) next b)))

(define (sum term a next b)
  (sum-iter 0 term a next b))

(define (identity x) x)
(define (inc x) (+ 1 x))

(define (sum-integers a b)
  (sum identity a inc b))

(define (sum-of-squares a b)
  (sum square a inc b))

