(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a) (accumulate combiner null-value term (next a) next b))))

(define (identity x) x)
(define (inc x) (+ x 1))

(define (sum term a next b)
  (accumulate + 0 term a next b))

(define (product term a next b)
  (accumulate * 1 term a next b))

(define (sum-integers a b)
  (sum identity a inc b))

(define (factorial n)
  (product identity 1 inc n))
