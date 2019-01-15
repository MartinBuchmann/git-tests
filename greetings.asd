;;;; greetings.asd

(asdf:defsystem #:greetings
  :description "A project stub for playing with git."
  :author "Martin Buchmann <Martin.Buchamnn@googlemail.com"
  :license  "Public Domain"
  :version "0.0.1"
  :serial t
  :depends-on (#:alexandria #:lisp-unit)
  :components ((:file "package")
               (:file "greetings")
               (:file "tests/greetings-tests"))
  :in-order-to ((test-op (test-op "greetings-test"))))

