#lang racket

(require rackunit)

(define (reverse sequence)
  (if (= (length sequence) 0)
    '()
    (append (list (last sequence)) (reverse (take sequence (- (length sequence) 1))))))

(check-equal? (reverse (list 1 2 3 4)) '(4 3 2 1))
(check-equal? (reverse (list 4 3 2 1)) '(1 2 3 4))