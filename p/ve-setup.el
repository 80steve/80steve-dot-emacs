;;; Package --- Virtualenv Setup
;;; Commentary:
;;; Code:

(use-package virtualenvwrapper
  :defer t
  :config
  (venv-initialize-interactive-shells)
  (setq venv-localtion "~/.virtualenvs/")
  )

(provide 've-setup)
;;; ve-setup.el ends here
