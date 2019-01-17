;;;; package.lisp

(defpackage #:greetings
  (:use #:cl #:prove)
  (:import-from :alexandria :once-only :with-gensyms))
