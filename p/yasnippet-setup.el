;;; Package --- Yasnippet Setup
;;; Commentary:
;;; Code:

(use-package yasnippet
  :defer 1
  :config
  (yas-global-mode 1)
  (setq yas-prompt-functions '(yas-completing-prompt
                               yas-ido-prompt))
  )

(provide 'yasnippet-setup)
;;; yasnippet-setup ends here
