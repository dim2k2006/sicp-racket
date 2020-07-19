#lang racket

(require rackunit)

(define (sum-integers a b)
  (if (> a b)
    0
    (+ a (sum-integers (+ a 1) b))))

(check-equal? (sum-integers 1 5) 15)
(check-equal? (sum-integers 10 20) 165)