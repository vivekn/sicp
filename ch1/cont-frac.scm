define (cont-frac n d k)
  (define (frac i)
    (if (> i k)
        0
        (/ (n i)
           (+ (d i) (frac (+ i 1))))))
  (frac 1))

