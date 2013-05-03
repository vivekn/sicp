(define (accumulate combiner null-value term a next b)
  (define (iter result x)
    (if (> x b)
        result
        (iter (combiner result (term x)) (next x))))
  (iter null-value a))

(define (fastsum acc n)
  (if (= n 0) 
      acc
      (fastsum (+ acc n) (- n 1))))

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
