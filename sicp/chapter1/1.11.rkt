#lang racket

(require rackunit)
(require racket/list)

(define (solution n)
  (cond
    [(< n 3) n]
    [else (+ (solution (- n 1)) (solution (- n 2)) (solution (- n 3)))]))

(check-equal? (solution 5) 11)
(check-equal? (solution 15) 4841)
(check-equal? (solution 12) 778)