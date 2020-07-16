#lang racket

(require rackunit)
(require racket/list)

(define (smallest-divisior n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond
    [(> (square test-divisor) n) n]
    [(divides? test-divisor n) test-divisor]
    [else (find-divisor n (+ test-divisor 1))]))

(define (square n)
  (* n n))

(define (divides? a b)
  (= (remainder b a) 0))

(check-equal? (smallest-divisior 199) 199)
(check-equal? (smallest-divisior 1999) 1999)
(check-equal? (smallest-divisior 19999) 7)