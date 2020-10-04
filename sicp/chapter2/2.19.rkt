#lang racket

(require rackunit)

(define (same-parity x . xs)
  (if (even? x)
    (append (list x) (filter even? xs))
    (append (list x) (filter odd? xs))))

(check-equal? (same-parity 1 2 3 4 5 6 7) '(1 3 5 7))
(check-equal? (same-parity 2 3 4 5 6 7) '(2 4 6))