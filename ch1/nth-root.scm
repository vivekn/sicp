(load "fixed-point.scm")
(load "repeated.scm")
(load "fast-expt.scm")

(define (average-damp f)
  (lambda (x) (/ (+ (f x) x) 2)))

(define (nth-root x n k)
  (define (fpfunc y) (/ x (fast-expt y (- n 1))))
  (fixed-point ((repeated average-damp k) fpfunc) 1.0))
