(load "repeated.scm")

(define dx 0.000001)

(define (smooth f)
  (lambda (x) (/ (+ 
                  (f (+ x dx))
                  (f x)
                  (f (- x dx))))))

(define (n-fold-smooth f n)
  ((repeated smooth n) f))
