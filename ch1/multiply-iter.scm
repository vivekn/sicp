(define (halve x)
    (if (even? x)
        (/ x 2)
        (/ (- x 1) 2)))

(define (double x) (+ x x))

(define (mul-iter sum b n) 
    (cond ((= n 0) sum)
          ((even? n) (mul-iter sum (double b) (halve n)))
          (else (mul-iter (+ sum b) (double b) (halve n)))))

(define (* a b) (mul-iter 0 a b))
