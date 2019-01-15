(in-package :greetings)

(define-test test-01
  (assert-equal 1 (* 1 1))
  (assert-true (right-function))
  (assert-nil (greeting #p"greeting"))
  (assert-equal 4 (evaluator (+ 1 3))))
