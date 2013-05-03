(define (product term a next b)
  (define (iter accum x)
    (if (> x b)
        accum
        (iter (* accum (term x)) (next x))))
  (iter 1 a))

(define (next x) (+ x 2))

(define (approx-pi n)
  (* 4.0 (/
        (* 2 (product square 4 next (+ 4 (* n 2))))
        (* (product square 3 next (+ 3 (* n 2))) (+ 3 (* (+ 1 n) 2))))))

