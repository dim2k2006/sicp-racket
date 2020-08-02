#lang racket

(require rackunit)

(provide make-rat)
(provide numer)
(provide denom)
(provide add-rat)
(provide sub-rat)
(provide mul-rat)
(provide div-rat)
(provide equal-rat?)

(define (make-rat n d) (cons n d))

(define (numer x) (car x))

(define (denom x) (cdr x))

(define (add-rat x y)
  (make-rat
    (+
      (* (numer x) (denom y))
      (* (numer y) (denom x)))
    (* (denom x) (denom y))))

(define (sub-rat x y)
  (make-rat
    (-
      (* (numer x) (denom y))
      (* (numer y) (denom x)))
    (* (denom x) (denom y))))

(define (mul-rat x y)
  (make-rat
    (* (numer x) (numer y))
    (* (denom x) (denom y))))

(define (div-rat x y)
  (make-rat
    (* (numer x) (denom y))
    (* (denom x) (numer y))))

(define (equal-rat? x y)
  (=
     (* (numer x) (denom y))
     (* (numer y) (denom x))))
