#lang racket

(require rackunit)

(define (square-tree tree)
  (map (lambda (sub-tree)
          (if (pair? sub-tree)
            (square-tree sub-tree)
            (* sub-tree sub-tree)))
            tree))

(check-equal? (square-tree '((1 2) (3 4) 5)) '((1 4) (9 16) 25))