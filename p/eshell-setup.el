(defun eshell/clear ()
  "Clears the shell buffer ala Unix's clear or DOS' cls"
  (interactive)
  (let ((inhibit-read-only t))
    (delete-region (point-min) (point-max))))

(provide 'eshell-setup)