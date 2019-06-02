;;; Package --- Flycheck Setup
;;; Commentary:
;;; Code:

(use-package flycheck
  :defer t
  :config
  (setq-default flycheck-disabled-checkers
                (append flycheck-disabled-checkers
                        '(javascript-jshint)))

  (flycheck-add-mode 'javascript-eslint 'web-mode)
  (flycheck-add-mode 'javascript-eslint 'js2-jsx-mode)
  (flycheck-add-mode 'javascript-eslint 'react-mode)

  (add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode)
  )

(add-hook 'after-init-hook 'global-flycheck-mode)

(provide 'flycheck-setup)
;;; flycheck-setup ends here
