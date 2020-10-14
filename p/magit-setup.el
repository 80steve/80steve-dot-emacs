;;; Package --- Magit Setup
;;; Commentary:
;;; Code:

(global-set-key "\C-cm" 'magit-status)
(global-set-key "\C-cbl" 'git-link)

(use-package magit
  :defer t
  :config
  (setq magit-last-seen-setup-instructions "1.4.0")
  (add-hook 'magit-mode-hook 'turn-on-magit-gitflow)
  )

(use-package magit-gitflow
  :defer t
  )

(provide 'magit-setup)
;;; magit-setup.el ends here
