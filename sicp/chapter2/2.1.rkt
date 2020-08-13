#lang racket

(require rackunit)

(require "rat.rkt")


(check-equal? (make-rat 1 2) '(1 . 2))