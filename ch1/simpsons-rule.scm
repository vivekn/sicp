(define (sum term a next b)
  (define (iter accum x)
    (if (> x b)
        accum
        (iter (+ accum (term x)) (next x))))
  (iter 0 a))

(define (integral f a b n) 
  (define h (/ (- b a) n))
  (define (term k) 
    (* (f (+ a (* k h))) 
       (cond ((or (= k 0) (= k n)) 1)
             ((even? k) 2)
             (else 4))))
  (define (inc x) (+ 1 x))
  (* (/ h 3) (sum term 0 inc n)))

(define (cube x) (* x x x))
