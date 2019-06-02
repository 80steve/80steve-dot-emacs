;;; Package --- Magit Setup
;;; Commentary:
;;; Code:

(global-set-key "\C-cm" 'magit-status)

(use-package magit
  :defer t
  :config
  (setq magit-last-seen-setup-instructions "1.4.0")
  (magit-todos-mode)
  (add-hook 'magit-mode-hook 'turn-on-magit-gitflow)
  )

(use-package magit-todos
  :defer t
  )

(use-package magit-gitflow
  :defer t
  )

(provide 'magit-setup)
;;; magit-setup.el ends here
