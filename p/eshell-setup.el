(setq
 eshell-save-history-on-exit t
 eshell-history-size 128
 eshell-hist-ignoredups t
 eshell-cmpl-ignore-case t
 eshell-cp-interactive-query t
 eshell-mv-interactive-query t
 eshell-rm-interactive-query t)

(require 'auto-complete)
(defvar ac-source-eshell-pcomplete
  '((candidates . (pcomplete-completions))))
(add-to-list 'ac-modes 'eshell-mode)
(setq ac-sources '(ac-source-eshell-pcomplete))

(defun eshell/clear ()
  "Clears the shell buffer ala Unix's clear or DOS' cls"
  (interactive)
  (let ((inhibit-read-only t))
    (delete-region (point-min) (point-max))))

(provide 'eshell-setup)
