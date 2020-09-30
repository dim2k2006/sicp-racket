#lang racket

(require rackunit)

(define (last-pair sequence)
  (if (= (length sequence) 1)
    sequence
    (last-pair (cdr sequence))))

(check-equal? (last-pair (list 23 72 149 34)) '(34))
(check-equal? (last-pair (list 1 2 3)) '(3))
(check-equal? (last-pair (list 1)) '(1))