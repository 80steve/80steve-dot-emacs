(setq
 eshell-save-history-on-exit t
 eshell-history-size 128
 eshell-hist-ignoredups t
 eshell-cmpl-ignore-case t
 eshell-cp-interactive-query t
 eshell-mv-interactive-query t
 eshell-rm-interactive-query t)

(defun eshell/clear ()
  "Clears the shell buffer ala Unix's clear or DOS' cls"
  (interactive)
  (let ((inhibit-read-only t))
    (delete-region (point-min) (point-max))))

(provide 'eshell-setup)
