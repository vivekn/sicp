(define (iterative-improve good-enough? improve)
  (define (iter guess)
    (let ((next (improve guess)))
      (if (good-enough? guess next)
          next
          (iter next)))) iter)

(define (good-enough? x y)
  (< (abs (- x y)) 0.001))

(define (fixed-point f guess)
  ((iterative-improve good-enough? f) guess))

(define (sqrt n)
  (fixed-point (lambda (x) (/ (+ (/ n x) x) 2)) 1.0))

