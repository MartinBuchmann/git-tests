(defsystem "greetings-test"
  :description "The test cases for greetings"
  :author "Martin Buchmann <Martin.Buchamnn@googlemail.com"
  :license "Public Domain"
  :version "0.0.1"
  :serial t
  :depends-on ("greetings" "prove")
  :components ((:test-file "greetings-tests"))
  :perform (test-op (op system)
                    (funcall (read-from-string "prove:run")
                             (system-relative-pathname :greetings-test "tests/"))))
