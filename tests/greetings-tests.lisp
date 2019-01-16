(in-package :greetings)

(plan 4)

(is   (* 1 1) 1)
(ok   (right-function))
(ok   (not (greeting #p"greeting")))
(is   (evaluator (+ 1 3)) 4)

(finalize)
