#lang racket

(require rackunit)

(require "rat.rkt")

(check-equal? (add-rat (make-rat 1 2) (make-rat 3 2)) '(8 . 4))
(check-equal? (sub-rat (make-rat 5 6) (make-rat 2 3)) '(3 . 18))
(check-equal? (mul-rat (make-rat 5 6) (make-rat 2 3)) '(10 . 18))
(check-equal? (div-rat (make-rat 5 6) (make-rat 2 3)) '(15 . 12))
(check-equal? (equal-rat? (make-rat 5 6) (make-rat 5 6)) #t)
(check-equal? (equal-rat? (make-rat 5 6) (make-rat 1 2)) #f)