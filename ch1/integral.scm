(define (sum-iter accum term a next b)
  (if (> a b)
      accum
      (sum-iter (+ accum (term a)) term (next a) next b)))

(define (sum term a next b)
  (sum-iter 0 term a next b))

(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* dx (sum f (+ a (/ dx 2)) add-dx b)))
