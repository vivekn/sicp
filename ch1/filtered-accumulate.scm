(define (filtered-accumulate combiner null-value term a next b predicate)
  (define (iter result x)
    (if (> x b) 
        result
        (if (predicate x)
            (iter (combiner result (term x)) (next x))
            (iter result (next x)))))
  (iter null-value a))

(load "miller-rabin.scm")

(define (inc x) (+ x 1))
(define (identity x) x)

(define (sum-of-squares-of-primes a b)
  (filtered-accumulate + 0 square a inc b prime?))

(define (coprime? a b)
  (= (gcd a b) 1))

(define (coprime-factorial n)
  (define (coprime2? x) (coprime? x n))
  (filtered-accumulate * 1 identity 1 inc n coprime2?))
  
