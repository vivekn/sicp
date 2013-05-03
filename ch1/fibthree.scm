(define (fibthree n)
    (if (<= n 3) n
        (+ (fibthree (- n 1))
           (* 2 (fibthree (- n 2)))
           (* 3 (fibthree (- n 3))))))

(define (fibthree-iter a b c n) 
    (cond ((= n 0) c)
          (else (fibthree-iter b c (+ c (* 2 b) (* 3 a)) (- n 1)))))

(define (ifibthree n) 
    (cond ((<= n 3) n)
          (else (fibthree-iter 1 2 3 (- n 3)))))
            
