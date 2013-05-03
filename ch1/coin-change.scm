(define (coin-change amount types)
    (cond ((= amount 0) 1)
          ((< amount 0) 0)
          ((= types 0) 0)
          (else (+
                 (coin-change (- amount (denom types)) types)
                 (coin-change amount (- types 1))))))

(define (denom n)
    (cond ((= n 5) 50)
          ((= n 4) 25)
          ((= n 3) 10)
          ((= n 2) 5)
          ((= n 1) 1)
          (else 1000000000)))             
