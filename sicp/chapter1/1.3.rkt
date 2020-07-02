#lang racket

(require rackunit)
(require racket/list)

(define (solution x y z)
  (let* (
    [list (sort (list x y z) >)]
    [a (first list)]
    [b (second list)])
    (+ a b)))

(check-equal? (solution 1 2 3) 5)
(check-equal? (solution 5 2 10) 15)
(check-equal? (solution 8 35 16) 51)