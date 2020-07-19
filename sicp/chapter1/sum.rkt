#lang racket

(require rackunit)

(define (sum term a next b)
  (if (> a b)
    0
    (+ (term a) (sum term (next a) next b))))

(define (inc n)
  (+ n 1))

(define (cube x) (* x x x))

(define (identity x) x)

(define (sum-cubes a b)
  (sum cube a inc b))

(define (sum-integers a b)
  (sum identity a inc b))

(check-equal? (sum-cubes 1 10) 3025)
(check-equal? (sum-integers 1 10) 55)
;;; (check-equal? (sum-integers 10 20) 165)