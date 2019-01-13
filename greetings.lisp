(defun greeting (file)
  "Reads the greetings from FILE."
  (with-open-file (data file)
    (loop for line = (read-line data nil nil)
          while line
          do (format t "~S" line))))

(defmacro evaluator (s-exp)
  `(format t "~A evalutes to: ~S" (write-to-string (quote ,s-exp)) ,s-exp))

(defun right-function ()
  "This function is good."
  t)
