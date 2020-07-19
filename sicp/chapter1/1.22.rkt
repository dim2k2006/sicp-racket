#lang racket

(require rackunit)
(require racket/list)

(require racket/base)
(define (runtime) (current-milliseconds))

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

(define (prime? n)
  (= (smallest-divisior n) n))

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (when (prime? n)
    (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

(displayln (timed-prime-test 1000))

;;; (check-equal? (smallest-divisior 199) 199)
;;; (check-equal? (smallest-divisior 1999) 1999)
;;; (check-equal? (smallest-divisior 19999) 7)