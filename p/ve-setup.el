;;; Package --- Virtualenv Setup
;;; Commentary:
;;; Code:

(use-package virtualenvwrapper
  :defer t
  :config
  (venv-initialize-interactive-shells)
  :init
  (setq venv-location "~/.virtualenvs/")
  )

(provide 've-setup)
;;; ve-setup.el ends here
