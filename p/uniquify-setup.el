;;; Package --- Uniquify Setup
;;; Commentary:
;;; Code:

(use-package uniquify
  :defer 4
  :config
  (setq uniquify-buffer-name-style 'reverse)
  (setq uniquify-separator " • ")
  (setq uniquify-after-kill-buffer-p t)
  (setq uniquify-ignore-buffers-re "^\\*")
  )

(provide 'uniquify-setup)
;;; uniquify-setup.el ends here
