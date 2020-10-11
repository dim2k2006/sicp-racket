#lang racket

(require rackunit)

(define (initial sequence)
  (if (= (length sequence) 0)
    '()
    (take sequence (- (length sequence) 1))))

(define (reverse sequence)
  (if (= (length sequence) 0)
    '()
    (append (list (last sequence)) (reverse (take sequence (- (length sequence) 1))))))

(define (deep-reverse sequence)
  (cond
    [(= (length sequence) 0) '()]
    [(not (pair? (last sequence))) (append (list (last sequence)) (deep-reverse (initial sequence)))]
    [else (append (deep-reverse (last sequence)) (deep-reverse (initial sequence)))]))

;;; (check-equal? (reverse (list 1 2 3 4)) '(4 3 2 1))
;;; (check-equal? (reverse (list 4 3 2 1)) '(1 2 3 4))

(check-equal? (initial (list 1 2 3)) '(1 2))

(check-equal? (initial '()) '())

(check-equal? (initial (list 2)) '())

(check-equal? (deep-reverse (list 1 2 3 4)) '(4 3 2 1))

(check-equal? (deep-reverse (list (1 2))) '((2 1)))

;;; (check-equal? (deep-reverse (list (1 2) (3 4))) '((4 3) (2 1)))