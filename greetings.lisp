(in-package #:greetings)

(setf prove:*enable-colors* nil)

(defun greeting (file)
  "Reads the greetings from FILE."
  (with-open-file (data file)
    (loop for line = (read-line data nil nil)
          for line-number from 1
          while line
          do (log:info "Line number : ~D" line-number)
             (format t "~S~%" line))))

(defmacro evaluator (s-exp)
  (with-gensyms (temp)
    (declare (ignore temp))
    `(let ((temp (write-to-string (quote ,s-exp))))
       (progn
         (format t "~A evaluates to: ~S~%" temp ,s-exp)
         ,s-exp))))

(defun right-function ()
  "This function is good."
  t)
