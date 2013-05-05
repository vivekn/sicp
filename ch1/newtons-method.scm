(define dx 0.000001)

(define (deriv f)
  (lambda (x) (/ 
                (- (f (+ x dx)) (f x))
                dx)))

(define (fixed-point f guess)
  (let ((next (f guess)))
    (if (close-enough? guess next)
        next
        (fixed-point f next))))

(define (close-enough? a b)
  (< (abs (- a b)) 0.001))

(define (newton-transform g)
  (lambda (x)
    (- x (/ (g x) ((deriv g) x)))))

(define (newtons-method g guess)
  (fixed-point (newton-transform g) guess))

(define (sqrt x)
  (newtons-method (lambda (y) (- (square y) x)) 1.0))
