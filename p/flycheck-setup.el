;;; package --- OrgMode Setup
;;; Commentary:
;;; Code:
(require 'flycheck)

(add-hook 'after-init-hook 'global-flycheck-mode)

(add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode)

(provide 'flycheck-setup)
;;; flycheck-setup ends here
