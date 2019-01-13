(defun greeting (file)
  "Reads the greetings from FILE."
  (with-open-file (data file)
    (loop for line = (read-line data nil nil)
          while line
          do (format t "~S" line))))
