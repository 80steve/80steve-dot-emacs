;;; Package --- Tramp Setup
;;; Commentary:
;;; Code:

(use-package tramp
  :defer 2
  :config
  (setq tramp-default-method "ssh")
  )

(provide 'tramp-setup)
;;; tramp-setup.el ends here
