#lang sicp

;; Exercise 1.1
(define a 3)
(define b (+ a 1))
(+ a b (* a b))
(= a b)
(if (and (> b a) (< b (* a b)))
  b
  a)
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
(+ 2 (if (< b a) b a))
(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))

;; Exercise 1.2
(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3(- 6 2)(- 2 7)))

;; Exercise 1.3
(define (square x) (* x x))
(define (sum-of-squares x y)
  (+ (square x) (square y)))
(define (sum-of-squares-of-largest-number a b c)
  (cond ((and (> a b) (> b c)) (sum-of-squares a b))
        ((and (> a b) (< b c)) (sum-of-squares a c))
        ((and (> b a) (> a c)) (sum-of-squares b a))
        ((and (> b a) (< a c)) (sum-of-squares b c))
        ((and (> c a) (> a b)) (sum-of-squares c a))
        ((and (> c a) (< a b)) (sum-of-squares c b))))

;; Exercise 1.4
;; Adds A and the absolute value of B
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))