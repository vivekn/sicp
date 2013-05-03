(define (sqrt-iter x guess) 
    (if (good-enough? x guess)
        guess
        (sqrt-iter x (improve x guess))))

(define (sqrt x) (sqrt-iter x 1.0))

(define (improve x y) 
    (/ (+ y (/ x y)) 2))

(define (square x) (* x x))

(define (good-enough? x guess)
    (< (/ (abs (- (square guess) x)) x) 0.001))
    
