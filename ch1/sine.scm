(define (sine angle)
    (if (<= angle 0.1) angle
        (p (sine (/ angle 3)))))

(define (p x) 
    (- (* x 3) (* 4 (cube x))))

(define (cube x) (* x x x))
