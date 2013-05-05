(define (fixed-point f guess)
  (let ((next (f guess)))
    (newline)
    (display next)
    (if (close-enough? guess next)
      next
      (fixed-point f next))))

(define (close-enough? a b)
  (< (abs (- a b)) 0.001))


(define (avg x y)
  (/ (+ x y) 2))

(define x-to-x-avg
  (fixed-point (lambda (y) (avg y (/ (log 1000) (log y)))) 2.0))
