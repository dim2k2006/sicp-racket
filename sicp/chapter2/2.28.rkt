#lang racket

(require rackunit)

(define (fringe sequence)
  (cond
    [(= (length sequence) 0) '()]
    [(pair? (first sequence)) (append (fringe (first sequence)) (fringe (list-tail sequence 1)))]
    [else (append (list (first sequence)) (fringe (list-tail sequence 1)))]))

(check-equal? (fringe '((1 2) (3 4))) '(1 2 3 4))