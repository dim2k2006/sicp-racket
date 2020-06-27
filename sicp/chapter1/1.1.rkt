#lang sicp

(#%require rackunit)

(define solution1 (+ 5 3 4))

(define solution2 (- 9 1))

(define solution3 (/ 6 2))

(define solution4 (+ (* 2 4) (- 4 6)))

(define a 3)

(define b (+ a 1))

(define solution5 (+ a b (* a b)))

(define solution6 (= a b))

(check-equal? solution1 12)
(check-equal? solution2 8)
(check-equal? solution3 3)
(check-equal? solution4 6)
(check-equal? a 3)
(check-equal? b 4)
(check-equal? solution5 19)
(check-equal? solution6 #f)