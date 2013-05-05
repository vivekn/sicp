(define (search f neg-point pos-point)
  (let ((midpoint (/ (+ pos-point neg-point) 2)))
    (if (close-enough? neg-point pos-point)
        midpoint
        (let ((a (f midpoint)))
          (cond ((positive? a) (search f neg-point midpoint))
                ((negative? a) (search f midpoint pos-point))
                (else midpoint))))))

(define (close-enough? neg-point pos-point)
  (< (abs (- pos-point neg-point)) 0.001))

(define (half-interval-method f a b)
  (cond ((and (negative? (f a)) (positive? (f b))) (search f a b))
        ((and (positive? (f a)) (negative? (f b))) (search f b a))
        (else (error "The points are of the same sign" a b))))


