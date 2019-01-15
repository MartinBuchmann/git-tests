(defsystem "greetings-test"
  :description "The test cases for greetings"
  :author "Martin Buchmann <Martin.Buchamnn@googlemail.com"
  :license "Public Domain"
  :version "0.0.1"
  :serial t
  :depends-on ("greetings" "lisp-unit")
  :components ((:test-file "greetings-tests"))
  :perform (test-op (op system)
                    (funcall (read-from-string "lisp-unit:run-tests")
                             ;(system-relative-pathname :greetings-test "tests/")
                             )))
